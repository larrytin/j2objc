/*
 * Copyright 2011 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.devtools.j2objc.types;

import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;

/**
 * IOSMethodBinding: synthetic binding for an iOS method.
 *
 * @author Tom Ball
 */
public class IOSMethodBinding extends GeneratedMethodBinding {

  private final IOSMethod iosMethod;

  private IOSMethodBinding(
      IOSMethod iosMethod, IMethodBinding original, int modifiers, ITypeBinding returnType,
      IMethodBinding methodDeclaration, ITypeBinding declaringClass, boolean varargs) {
    super(original, iosMethod.getName(), modifiers, returnType, methodDeclaration, declaringClass,
          false, varargs, true);
    this.iosMethod = iosMethod;
  }

  public static IOSMethodBinding newMappedMethod(IOSMethod iosMethod, IMethodBinding original) {
    ITypeBinding returnType =
        original.isConstructor() ? original.getDeclaringClass() : original.getReturnType();
    ITypeBinding declaringClass = Types.resolveIOSType(iosMethod.getDeclaringClass());
    if (declaringClass == null) {
      declaringClass = IOSTypeBinding.newUnmappedClass(iosMethod.getDeclaringClass());
    }
    IOSMethodBinding binding = new IOSMethodBinding(
        iosMethod, original, original.getModifiers(), returnType, null, declaringClass,
        original.isVarargs());
    binding.addParameters(original);
    return binding;
  }

  public static IOSMethodBinding newMethod(
      IOSMethod iosMethod, int modifiers, ITypeBinding returnType, ITypeBinding declaringClass) {
    return new IOSMethodBinding(
        iosMethod, null, modifiers, returnType, null, declaringClass, false);
  }

  public static IOSMethodBinding newTypedInvocation(IOSMethodBinding m, ITypeBinding returnType) {
    IOSMethodBinding binding = new IOSMethodBinding(
        m.getIOSMethod(), null, m.getModifiers(), returnType, m, m.getDeclaringClass(),
        m.isVarargs());
    binding.addParameters(m);
    return binding;
  }

  public static IOSMethodBinding newFunction(
      String name, ITypeBinding returnType, ITypeBinding declaringClass,
      ITypeBinding... paramTypes) {
    IOSMethodBinding binding = new IOSMethodBinding(
        IOSMethod.newFunction(name), null, 0, returnType, null, declaringClass, false);
    for (ITypeBinding paramType : paramTypes) {
      binding.addParameter(paramType);
    }
    return binding;
  }

  public static IOSMethodBinding newDereference(ITypeBinding type) {
    assert type instanceof PointerTypeBinding : "Can't dereference a non-pointer.";
    return new IOSMethodBinding(
        IOSMethod.DEREFERENCE, null, 0, ((PointerTypeBinding) type).getPointeeType(), null, null,
        false);
  }

  public static IOSMethodBinding newAddressOf(ITypeBinding type) {
    return new IOSMethodBinding(
        IOSMethod.ADDRESS_OF, null, 0, new PointerTypeBinding(type), null, null, false);
  }

  public static IOSMethod getIOSMethod(IMethodBinding binding) {
    if (binding instanceof IOSMethodBinding) {
      return ((IOSMethodBinding) binding).getIOSMethod();
    }
    return null;
  }

  public IOSMethod getIOSMethod() {
    return iosMethod;
  }

  public static boolean hasVarArgsTarget(IMethodBinding method) {
    IOSMethod iosMethod = getIOSMethod(method);
    if (iosMethod != null) {
      return iosMethod.isVarArgs();
    }
    return false;
  }
}
