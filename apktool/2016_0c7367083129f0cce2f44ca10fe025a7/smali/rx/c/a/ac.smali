.class final Lrx/c/a/ac;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lrx/c/a/ab;


# direct methods
.method constructor <init>(Lrx/c/a/ab;J)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lrx/c/a/ac;->b:Lrx/c/a/ab;

    iput-wide p2, p0, Lrx/c/a/ac;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lrx/c/a/ac;->b:Lrx/c/a/ab;

    iget-object v0, v0, Lrx/c/a/ab;->a:Lrx/l;

    iget-wide v2, p0, Lrx/c/a/ac;->a:J

    invoke-interface {v0, v2, v3}, Lrx/l;->request(J)V

    .line 86
    return-void
.end method
