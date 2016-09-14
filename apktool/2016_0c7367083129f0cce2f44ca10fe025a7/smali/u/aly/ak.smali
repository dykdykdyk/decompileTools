.class public final Lu/aly/ak;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ak;->a:Ljava/lang/String;

    .line 199
    iput-wide v2, p0, Lu/aly/ak;->b:J

    .line 201
    iput-wide v2, p0, Lu/aly/ak;->c:J

    .line 202
    iput-wide v2, p0, Lu/aly/ak;->d:J

    return-void
.end method
