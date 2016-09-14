.class final Lcom/tencent/connect/b/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/tencent/connect/b/j;


# direct methods
.method constructor <init>(Lcom/tencent/connect/b/j;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/tencent/connect/b/m;->a:Lcom/tencent/connect/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 612
    :try_start_0
    invoke-static {}, Lcom/tencent/open/web/security/JniInterface;->clearAllPWD()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
