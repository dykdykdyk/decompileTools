.class public final Lu/aly/ei;
.super Ljava/lang/Object;
.source "UMCCSystemBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lu/aly/ei;->a:Ljava/lang/String;

    .line 9
    iput-wide v2, p0, Lu/aly/ei;->b:J

    .line 10
    iput-wide v2, p0, Lu/aly/ei;->c:J

    .line 11
    iput-object v0, p0, Lu/aly/ei;->d:Ljava/lang/String;

    .line 15
    return-void
.end method
