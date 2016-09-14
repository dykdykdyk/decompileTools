.class public final Landroid/support/v7/widget/au;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private a:Landroid/support/v7/widget/aj;

.field private b:Landroid/support/v7/widget/bn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    sget v0, Landroid/support/v7/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Landroid/support/v7/widget/fx;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/aj;->a(Landroid/util/AttributeSet;I)V

    .line 64
    invoke-static {p0}, Landroid/support/v7/widget/bn;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/bn;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/bn;->a(Landroid/util/AttributeSet;I)V

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->a()V

    .line 67
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->d()V

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    invoke-virtual {v0}, Landroid/support/v7/widget/bn;->a()V

    .line 146
    :cond_1
    return-void
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    .line 108
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
    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    .line 134
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
    .line 79
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->a()V

    .line 83
    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 122
    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/au;->b:Landroid/support/v7/widget/bn;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bn;->a(Landroid/content/Context;I)V

    .line 154
    :cond_0
    return-void
.end method
