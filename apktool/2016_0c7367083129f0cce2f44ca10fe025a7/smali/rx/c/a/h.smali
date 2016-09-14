.class final Lrx/c/a/h;
.super Lrx/t;
.source "OnSubscribeSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/s;

.field final synthetic b:Lrx/c/a/g;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/c/a/g;Lrx/s;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    iput-object p1, p0, Lrx/c/a/h;->b:Lrx/c/a/g;

    iput-object p2, p0, Lrx/c/a/h;->a:Lrx/s;

    invoke-direct {p0}, Lrx/t;-><init>()V

    .line 41
    iput-boolean v0, p0, Lrx/c/a/h;->c:Z

    .line 42
    iput-boolean v0, p0, Lrx/c/a/h;->d:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/c/a/h;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lrx/c/a/h;->c:Z

    if-nez v0, :cond_0

    .line 57
    iget-boolean v0, p0, Lrx/c/a/h;->d:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lrx/c/a/h;->a:Lrx/s;

    iget-object v1, p0, Lrx/c/a/h;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/s;->a(Ljava/lang/Object;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lrx/c/a/h;->a:Lrx/s;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Observable emitted no items"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/s;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lrx/c/a/h;->a:Lrx/s;

    invoke-virtual {v0, p1}, Lrx/s;->a(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lrx/c/a/h;->unsubscribe()V

    .line 69
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-boolean v0, p0, Lrx/c/a/h;->d:Z

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v1, p0, Lrx/c/a/h;->c:Z

    .line 75
    iget-object v0, p0, Lrx/c/a/h;->a:Lrx/s;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Observable emitted too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/s;->a(Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {p0}, Lrx/c/a/h;->unsubscribe()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-boolean v1, p0, Lrx/c/a/h;->d:Z

    .line 79
    iput-object p1, p0, Lrx/c/a/h;->e:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/c/a/h;->request(J)V

    .line 50
    return-void
.end method
