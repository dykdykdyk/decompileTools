.class Lretrofit/Platform$Base$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lretrofit/Platform$Base$2;->this$0:Lretrofit/Platform$Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lretrofit/Platform$Base$2$1;

    invoke-direct {v1, p0, p1}, Lretrofit/Platform$Base$2$1;-><init>(Lretrofit/Platform$Base$2;Ljava/lang/Runnable;)V

    const-string v2, "Retrofit-Idle"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
