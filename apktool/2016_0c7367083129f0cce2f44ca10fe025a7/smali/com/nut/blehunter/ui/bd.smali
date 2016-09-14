.class final Lcom/nut/blehunter/ui/bd;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nut/blehunter/ui/bd;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/bd;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    const v1, 0x7f0d01a1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    .line 71
    new-instance v0, Lcom/bingerz/android/countrycodepicker/g;

    invoke-direct {v0}, Lcom/bingerz/android/countrycodepicker/g;-><init>()V

    iget-object v0, p0, Lcom/nut/blehunter/ui/bd;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-static {v0}, Lcom/bingerz/android/countrycodepicker/g;->a(Landroid/app/Activity;)V

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
