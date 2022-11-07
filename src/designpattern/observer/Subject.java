/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package designpattern.observer;

/**
 *
 * @author zagzo
 */
public interface Subject {
    void subsribe(Observer observer);
    void unsubsribe(Observer observer);
    void notifyAllSubscribers();
    
}
