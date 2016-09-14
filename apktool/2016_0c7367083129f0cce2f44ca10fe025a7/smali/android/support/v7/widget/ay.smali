.class public final Landroid/support/v7/widget/ay;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/widget/aj;

.field private c:Landroid/support/v7/widget/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ay;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {p1}, Landroid/support/v7/widget/fx;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Landroid/support/v7/widget/ay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/ay;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ga;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ga;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ay;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/aj;->a(Landroid/util/AttributeSet;I)V

    .line 77
    invoke-static {p0}, Landroid/support/v7/widget/bn;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/bn;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/bn;->a(Landroid/util/AttributeSet;I)V

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->a()V

    .line 80
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->d()V

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->a()V

    .line 164
    :cond_1
    return-void
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    .line 126
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->a()V

    .line 101
    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public final setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/support/v7/widget/ay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ay;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/content/res/ColorStateList;)V

    .line 114
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/ay;->b:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 140
    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/ay;->c:Landroid/support/v7/widget/bn;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bn;->a(Landroid/content/Context;I)V

    .line 172
    :cond_0
    return-void
.end method
