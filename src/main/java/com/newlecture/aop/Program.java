package com.newlecture.aop;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Program {

	public static void main(String[] args) {
		
		Calculator origin = new NewlecCalculator();
		
		//proxy 를 생성해서 실제 주업무 로직을 위임.
		// h => 보조업무
		Calculator cal = (Calculator) Proxy.newProxyInstance(
										NewlecCalculator.class.getClassLoader(),
										new Class[] {Calculator.class},
										new InvocationHandler() {
			
			@Override
			public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
					
				System.out.println("보조업무");
				
				Object result = method.invoke(origin, args); //필터와 비슷한 두 체인 맥락
				
				return result;
			}
		});
		
		//int data = cal.add(3, 4);
		int data = cal.add(3, 4);
		
		System.out.println(data);

	}

}
