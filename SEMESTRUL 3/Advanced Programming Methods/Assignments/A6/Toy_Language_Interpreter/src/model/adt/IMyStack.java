package model.adt;


import exceptions.EmptyStackException;
import model.statements.IStmt;

import java.util.Stack;

public interface IMyStack<T>
{
    T pop() throws EmptyStackException;
    void push(T v);
    boolean isEmpty();
    T peek();
}