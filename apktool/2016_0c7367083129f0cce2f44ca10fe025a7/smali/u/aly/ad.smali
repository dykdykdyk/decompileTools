.class public final Lu/aly/ad;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide v2, p0, Lu/aly/ad;->a:J

    .line 151
    iput-wide v2, p0, Lu/aly/ad;->b:J

    .line 152
    iput v0, p0, Lu/aly/ad;->c:I

    .line 153
    iput v0, p0, Lu/aly/ad;->d:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/ad;->e:Ljava/util/List;

    return-void
.end method
