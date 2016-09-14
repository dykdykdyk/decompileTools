.class public final Lrx/c/a/f;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final a:Lrx/e/c;


# instance fields
.field final b:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lrx/e/e;->a()Lrx/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/e;->c()Lrx/e/c;

    move-result-object v0

    sput-object v0, Lrx/c/a/f;->a:Lrx/e/c;

    return-void
.end method

.method public constructor <init>(Lrx/i;Lrx/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<TT;>;",
            "Lrx/j",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/c/a/f;->b:Lrx/i;

    .line 40
    iput-object p2, p0, Lrx/c/a/f;->c:Lrx/j;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lrx/t;

    .line 1046
    :try_start_0
    iget-object v0, p0, Lrx/c/a/f;->c:Lrx/j;

    invoke-static {v0}, Lrx/e/c;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/j;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/t;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1049
    :try_start_1
    invoke-virtual {v0}, Lrx/t;->onStart()V

    .line 1050
    iget-object v1, p0, Lrx/c/a/f;->b:Lrx/i;

    invoke-interface {v1, v0}, Lrx/i;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1063
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v1

    .line 1055
    :try_start_2
    invoke-static {v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 1056
    invoke-virtual {v0, v1}, Lrx/t;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1058
    :catch_1
    move-exception v0

    .line 1059
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 1062
    invoke-virtual {p1, v0}, Lrx/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
