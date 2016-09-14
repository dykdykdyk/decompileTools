.class final Lcom/nut/blehunter/ui/en;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/nut/blehunter/ui/en;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/en;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->invalidateOptionsMenu()V

    .line 213
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/en;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Z)Z

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/en;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Z)Z

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
