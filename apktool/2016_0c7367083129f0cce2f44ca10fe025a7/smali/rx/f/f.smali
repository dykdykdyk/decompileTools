.class public final Lrx/f/f;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# static fields
.field private static final a:Lrx/f/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lrx/f/h;

    invoke-direct {v0}, Lrx/f/h;-><init>()V

    sput-object v0, Lrx/f/f;->a:Lrx/f/h;

    return-void
.end method

.method public static a()Lrx/u;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lrx/f/a;->a()Lrx/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/u;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lrx/f/g;

    invoke-direct {v0, p0}, Lrx/f/g;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static a(Lrx/b/a;)Lrx/u;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lrx/f/a;->a(Lrx/b/a;)Lrx/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/u;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lrx/f/f;->a:Lrx/f/h;

    return-object v0
.end method
