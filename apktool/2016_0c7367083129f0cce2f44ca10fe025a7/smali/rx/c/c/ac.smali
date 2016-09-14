.class final Lrx/c/c/ac;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrx/c/c/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/a;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(Lrx/b/a;Ljava/lang/Long;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lrx/c/c/ac;->a:Lrx/b/a;

    .line 112
    iput-object p2, p0, Lrx/c/c/ac;->b:Ljava/lang/Long;

    .line 113
    iput p3, p0, Lrx/c/c/ac;->c:I

    .line 114
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 105
    check-cast p1, Lrx/c/c/ac;

    .line 1118
    iget-object v0, p0, Lrx/c/c/ac;->b:Ljava/lang/Long;

    iget-object v1, p1, Lrx/c/c/ac;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 1119
    if-nez v0, :cond_0

    .line 1120
    iget v0, p0, Lrx/c/c/ac;->c:I

    iget v1, p1, Lrx/c/c/ac;->c:I

    invoke-static {v0, v1}, Lrx/c/c/z;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method
