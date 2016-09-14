.class abstract Lrx/c/d/b/h;
.super Lrx/c/d/b/f;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/d/b/f",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final f:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lrx/c/d/b/h;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/c/d/b/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/c/d/b/h;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lrx/c/d/b/f;-><init>(I)V

    .line 36
    return-void
.end method
