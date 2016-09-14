.class public Lcom/nut/blehunter/ui/widget/ClearEditText;
.super Landroid/widget/EditText;
.source "ClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Lcom/nut/blehunter/ui/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nut/blehunter/ui/widget/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/widget/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1038
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 1039
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1044
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 1045
    invoke-virtual {p0, p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1046
    invoke-virtual {p0, p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->b:Lcom/nut/blehunter/ui/widget/b;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->b:Lcom/nut/blehunter/ui/widget/b;

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/widget/b;->a(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setClearIconVisible(Z)V
    .locals 5

    .prologue
    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnClickClearListener(Lcom/nut/blehunter/ui/widget/b;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/ClearEditText;->b:Lcom/nut/blehunter/ui/widget/b;

    .line 110
    return-void
.end method
