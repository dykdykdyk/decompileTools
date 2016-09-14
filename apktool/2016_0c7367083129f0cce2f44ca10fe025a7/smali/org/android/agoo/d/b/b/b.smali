.class final Lorg/android/agoo/d/b/b/b;
.super Ljava/lang/Object;
.source "SpdyChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/d/b/b/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/b/a;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/android/agoo/d/b/b/b;->a:Lorg/android/agoo/d/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "SpdyClient"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/android/agoo/d/b/b/b;->a:Lorg/android/agoo/d/b/b/a;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/b/a;->c()V

    .line 239
    return-void
.end method
