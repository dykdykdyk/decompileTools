.class public final Lu/aly/z;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static c:J


# instance fields
.field public a:Lu/aly/am;

.field public b:Lu/aly/al;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/z;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lu/aly/am;

    invoke-direct {v0}, Lu/aly/am;-><init>()V

    iput-object v0, p0, Lu/aly/z;->a:Lu/aly/am;

    .line 29
    new-instance v0, Lu/aly/al;

    invoke-direct {v0}, Lu/aly/al;-><init>()V

    iput-object v0, p0, Lu/aly/z;->b:Lu/aly/al;

    return-void
.end method
