.class final Lcom/nut/blehunter/ui/ew;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/nut/blehunter/ui/ew;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nut/blehunter/ui/ew;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->invalidateOptionsMenu()V

    .line 194
    return-void
.end method
