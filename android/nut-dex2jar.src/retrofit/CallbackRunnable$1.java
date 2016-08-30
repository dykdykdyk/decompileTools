package retrofit;

class CallbackRunnable$1
  implements Runnable
{
  CallbackRunnable$1(CallbackRunnable paramCallbackRunnable, ResponseWrapper paramResponseWrapper)
  {
  }

  public void run()
  {
    CallbackRunnable.access$000(this.this$0).success(this.val$wrapper.responseBody, this.val$wrapper.response);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.CallbackRunnable.1
 * JD-Core Version:    0.6.2
 */