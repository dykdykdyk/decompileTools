.class public final Lcom/tencent/connect/common/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:I

.field public b:Lcom/tencent/tauth/b;

.field final synthetic c:Lcom/tencent/connect/common/c;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/common/c;ILcom/tencent/tauth/b;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/tencent/connect/common/d;->c:Lcom/tencent/connect/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lcom/tencent/connect/common/d;->a:I

    .line 282
    iput-object p3, p0, Lcom/tencent/connect/common/d;->b:Lcom/tencent/tauth/b;

    .line 283
    return-void
.end method
