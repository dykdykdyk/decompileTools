.class public final Lokhttp3/f;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput v0, p0, Lokhttp3/f;->c:I

    .line 269
    iput v0, p0, Lokhttp3/f;->d:I

    .line 270
    iput v0, p0, Lokhttp3/f;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/e;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lokhttp3/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/e;-><init>(Lokhttp3/f;B)V

    return-object v0
.end method
