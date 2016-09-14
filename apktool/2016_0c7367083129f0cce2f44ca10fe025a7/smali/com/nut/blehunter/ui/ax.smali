.class final Lcom/nut/blehunter/ui/ax;
.super Ljava/lang/Object;
.source "GuidePagerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/GuidePagerActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/GuidePagerActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nut/blehunter/ui/ax;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nut/blehunter/ui/ax;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ax;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/GuidePagerActivity;->a(Lcom/nut/blehunter/ui/GuidePagerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/ax;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/GuidePagerActivity;->a(Lcom/nut/blehunter/ui/GuidePagerActivity;I)I

    .line 75
    const/4 v0, 0x1

    return v0
.end method
