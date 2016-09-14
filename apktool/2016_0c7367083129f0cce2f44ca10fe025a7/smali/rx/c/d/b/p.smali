.class abstract Lrx/c/d/b/p;
.super Lrx/c/d/b/l;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/d/b/l",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lrx/c/d/b/p;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/c/d/b/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/c/d/b/p;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lrx/c/d/b/l;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final d(J)V
    .locals 7

    .prologue
    .line 39
    sget-object v0, Lrx/c/d/b/y;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/c/d/b/p;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 40
    return-void
.end method
