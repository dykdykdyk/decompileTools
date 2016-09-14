.class final Lorg/android/agoo/d/a/c;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# instance fields
.field final synthetic a:Lorg/android/agoo/d/a/b;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/a/b;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/android/agoo/d/a/c;->a:Lorg/android/agoo/d/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/android/agoo/d/a/c;->a:Lorg/android/agoo/d/a/b;

    invoke-virtual {v0, p1}, Lorg/android/agoo/d/a/b;->a(Landroid/os/Message;)V

    .line 40
    return-void
.end method
