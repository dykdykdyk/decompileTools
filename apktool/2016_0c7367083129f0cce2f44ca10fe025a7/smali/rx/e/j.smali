.class public final Lrx/e/j;
.super Lrx/e/i;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final a:Lrx/e/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lrx/e/j;

    invoke-direct {v0}, Lrx/e/j;-><init>()V

    sput-object v0, Lrx/e/j;->a:Lrx/e/j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lrx/e/i;-><init>()V

    return-void
.end method

.method public static a()Lrx/e/i;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lrx/e/j;->a:Lrx/e/j;

    return-object v0
.end method
