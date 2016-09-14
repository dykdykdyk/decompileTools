.class final Lcom/nut/blehunter/ui/widget/n;
.super Ljava/lang/Object;
.source "PopupWindowDelete.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/nut/blehunter/ui/widget/m;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/widget/m;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/n;->b:Lcom/nut/blehunter/ui/widget/m;

    iput-object p2, p0, Lcom/nut/blehunter/ui/widget/n;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/n;->a:Landroid/app/Activity;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/widget/m;->a(Landroid/app/Activity;F)V

    .line 47
    return-void
.end method
