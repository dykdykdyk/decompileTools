.class final Lorg/android/agoo/d/b/a/f;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/d/b/a/b;


# direct methods
.method constructor <init>(Lorg/android/agoo/d/b/a/b;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lorg/android/agoo/d/b/a/f;->a:Lorg/android/agoo/d/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/android/agoo/d/b/a/f;->a:Lorg/android/agoo/d/b/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/a/b;->c()V

    .line 420
    return-void
.end method
