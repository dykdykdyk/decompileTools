.class Lretrofit/CallbackRunnable$2;
.super Ljava/lang/Object;
.source "CallbackRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lretrofit/CallbackRunnable;

.field final synthetic val$handled:Lretrofit/RetrofitError;


# direct methods
.method constructor <init>(Lretrofit/CallbackRunnable;Lretrofit/RetrofitError;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lretrofit/CallbackRunnable$2;->this$0:Lretrofit/CallbackRunnable;

    iput-object p2, p0, Lretrofit/CallbackRunnable$2;->val$handled:Lretrofit/RetrofitError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lretrofit/CallbackRunnable$2;->this$0:Lretrofit/CallbackRunnable;

    # getter for: Lretrofit/CallbackRunnable;->callback:Lretrofit/Callback;
    invoke-static {v0}, Lretrofit/CallbackRunnable;->access$000(Lretrofit/CallbackRunnable;)Lretrofit/Callback;

    move-result-object v0

    iget-object v1, p0, Lretrofit/CallbackRunnable$2;->val$handled:Lretrofit/RetrofitError;

    invoke-interface {v0, v1}, Lretrofit/Callback;->failure(Lretrofit/RetrofitError;)V

    .line 54
    return-void
.end method
