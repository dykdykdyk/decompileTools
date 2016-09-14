.class final Lrx/e/d;
.super Lrx/e/c;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static a:Lrx/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lrx/e/d;

    invoke-direct {v0}, Lrx/e/d;-><init>()V

    sput-object v0, Lrx/e/d;->a:Lrx/e/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lrx/e/c;-><init>()V

    return-void
.end method

.method public static a()Lrx/e/c;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lrx/e/d;->a:Lrx/e/d;

    return-object v0
.end method
