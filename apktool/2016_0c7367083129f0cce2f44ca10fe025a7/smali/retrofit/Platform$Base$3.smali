.class Lretrofit/Platform$Base$3;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/RestAdapter$Log;


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lretrofit/Platform$Base$3;->this$0:Lretrofit/Platform$Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    return-void
.end method
