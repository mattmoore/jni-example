public class Main {
  static {
    System.loadLibrary("hello");
  }

  public native void sayHello();

  public static void main(String[] args) {
    new Main().sayHello();
  }
}
