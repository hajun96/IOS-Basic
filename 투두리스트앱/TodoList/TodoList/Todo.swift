//
//  Todo.swift
//  TodoList
//
//  Created by joonwon lee on 2020/03/19.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit


// TODO: Codable과 Equatable 추가
struct Todo: Codable, Equatable {            //codable 로 struct를 json 형태로 가능
    let id: Int
    var isDone: Bool
    var detail: String
    var isToday: Bool
    
    mutating func update(isDone: Bool, detail: String, isToday: Bool) {
        // TODO: update 로직 추가
        self.isDone = isDone
        self.detail = detail
        self.isToday = isToday
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        // TODO: 동등 조건 추가
        return  lhs.id == rhs.id
    }
}

class TodoManager {  //투두뷰모델이 접근해서 사용한다.
     
    static let shared = TodoManager()   //싱글톤 객체
     
    static var lastId: Int = 0 // 새로운 테스크를 만들때 이것을 기반해서 아이디를 만들거다
    
    var todos: [Todo] = []
    
    func createTodo(detail: String, isToday: Bool) -> Todo {
        //TODO: create로직 추가 완료 ++
        let nextId = TodoManager.lastId + 1 // 라스트아이디에 1을 더하면 새로운 아이디가 된다!
        TodoManager.lastId = nextId // 새로운 id로 업데이트 시켜준다
        return Todo(id: nextId, isDone: false, detail: detail, isToday: isToday)
    }
    
    func addTodo(_ todo: Todo) {
        //TODO: add로직 추가
        todos.append(todo) //todos 에 새로 들어온 todo append
        saveTodo() // 정보가 업데이트될땐 바로 저장할수 있게끔 하기
    }
    
    func deleteTodo(_ todo: Todo) {
        //TODO: delete 로직 추가
//        if let index = todos.firstIndex(of: todo){  //알고리즘 적으로는 이 방법이 더 효율적이다.
//            todos.remove(at: index)
      todos = todos.filter {$0.id != todo.id}//퍼포먼스를 크게 향상 시키지 않는 이상 가독성을 더 신경쓰는게 어떨까?   위 문구와 동일한 의미
      saveTodo()
    }
    
    func updateTodo(_ todo: Todo) {
        //TODO: update 로직 추가
        
         
        guard let index = todos.firstIndex(of: todo) else { return }  //firstindex 가 todo 인것을 찾아보고 리턴 없으면 그냥 리턴
        todos[index].update(isDone: todo.isDone, detail: todo.detail, isToday: todo.isToday)
        saveTodo()
    }
    
    func saveTodo() {
        Storage.store(todos, to: .documents, as: "todos.json") //데이터를 주고 받을때 json 타입으로 주고 받는다. (키와 벨류로 묶여있는 상태)
        
       // let json: [String: Any] 이런식으로 구성되어져 있음    
        
    }
    
    func retrieveTodo() {
        todos = Storage.retrive("todos.json", from: .documents, as: [Todo].self) ?? []
        
        let lastId = todos.last?.id ?? 0
        TodoManager.lastId = lastId
    }
}

class TodoViewModel { //MVVM
    
    enum Section: Int, CaseIterable {
        case today
        case upcoming
        
        var title: String {
            switch self {
            case .today: return "Today"
            default: return "Upcoming"
            }
        }
    }
    
    private let manager = TodoManager.shared
    
    var todos: [Todo] {
        return manager.todos
    }
    
    var todayTodos: [Todo] {
        return todos.filter { $0.isToday == true }
    }
    
    var upcompingTodos: [Todo] {
        return todos.filter { $0.isToday == false }
    }
    
    var numOfSection: Int {
        return Section.allCases.count
    }
    
    func addTodo(_ todo: Todo) {
        manager.addTodo(todo)
    }
    
    func deleteTodo(_ todo: Todo) {
        manager.deleteTodo(todo)
    }
    
    func updateTodo(_ todo: Todo) {
        manager.updateTodo(todo)
    }
    
    func loadTasks() {
        manager.retrieveTodo()
    }
}

