.class final Lbolts/l;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/o;

.field final synthetic b:Lbolts/g;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;Lbolts/o;Lbolts/g;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbolts/l;->d:Lbolts/h;

    iput-object p2, p0, Lbolts/l;->a:Lbolts/o;

    iput-object p3, p0, Lbolts/l;->b:Lbolts/g;

    iput-object p4, p0, Lbolts/l;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lbolts/h;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    .line 1351
    iget-object v0, p0, Lbolts/l;->a:Lbolts/o;

    iget-object v1, p0, Lbolts/l;->b:Lbolts/g;

    iget-object v2, p0, Lbolts/l;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/h;->b(Lbolts/o;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;)V

    .line 1352
    const/4 v0, 0x0

    .line 348
    return-object v0
.end method
