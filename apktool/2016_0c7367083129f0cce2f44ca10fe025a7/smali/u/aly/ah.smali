.class public final Lu/aly/ah;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lu/aly/o;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-wide v0, p0, Lu/aly/ah;->a:J

    .line 338
    iput-wide v0, p0, Lu/aly/ah;->b:J

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ah;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lu/aly/z;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    return-void
.end method
