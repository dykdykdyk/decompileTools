.class final Lcom/tencent/connect/b/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/connect/b/j;


# direct methods
.method constructor <init>(Lcom/tencent/connect/b/j;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/tencent/connect/b/k;->a:Lcom/tencent/connect/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method
