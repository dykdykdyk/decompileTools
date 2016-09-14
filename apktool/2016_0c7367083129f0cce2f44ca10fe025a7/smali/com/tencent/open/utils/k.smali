.class public final Lcom/tencent/open/utils/k;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lcom/tencent/open/utils/k;->a:Ljava/lang/String;

    .line 805
    iput p2, p0, Lcom/tencent/open/utils/k;->b:I

    .line 806
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/utils/k;-><init>(Ljava/lang/String;I)V

    return-void
.end method
