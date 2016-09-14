.class public final Lcom/twitter/sdk/android/core/internal/scribe/f;
.super Ljava/lang/Object;
.source "ScribeConfig.java"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->a:Z

    .line 46
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->b:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->c:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->d:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->e:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->f:Ljava/lang/String;

    .line 51
    iput p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->g:I

    .line 52
    iput p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->h:I

    .line 53
    return-void
.end method
