.class Landroid/support/v7/widget/bn;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/fy;

.field private c:Landroid/support/v7/widget/fy;

.field private d:Landroid/support/v7/widget/fy;

.field private e:Landroid/support/v7/widget/fy;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/bn;
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 33
    new-instance v0, Landroid/support/v7/widget/bo;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bo;-><init>(Landroid/widget/TextView;)V

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/bn;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bn;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/fy;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 173
    .line 4518
    invoke-virtual {p1, p0, p2, v0}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Landroid/support/v7/widget/fy;

    invoke-direct {v0}, Landroid/support/v7/widget/fy;-><init>()V

    .line 176
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/fy;->e:Z

    .line 177
    iput-object v1, v0, Landroid/support/v7/widget/fy;->b:Landroid/content/res/ColorStateList;

    .line 180
    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/bn;->b:Landroid/support/v7/widget/fy;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->c:Landroid/support/v7/widget/fy;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->d:Landroid/support/v7/widget/fy;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->e:Landroid/support/v7/widget/fy;

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bn;->b:Landroid/support/v7/widget/fy;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bn;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;)V

    .line 159
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bn;->c:Landroid/support/v7/widget/fy;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bn;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;)V

    .line 160
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bn;->d:Landroid/support/v7/widget/fy;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bn;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;)V

    .line 161
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/bn;->e:Landroid/support/v7/widget/fy;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/bn;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;)V

    .line 163
    :cond_1
    return-void
.end method

.method final a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 126
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/ga;

    move-result-object v0

    .line 128
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ga;->a(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bn;->a(Z)V

    .line 135
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ga;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    iget-object v2, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4206
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;)V
    .locals 1

    .prologue
    .line 166
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;[I)V

    .line 169
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/16 v9, 0x17

    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 51
    invoke-static {}, Landroid/support/v7/widget/ap;->a()Landroid/support/v7/widget/ap;

    move-result-object v0

    .line 54
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    invoke-static {v5, p1, v3, p2, v2}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ga;

    move-result-object v3

    .line 56
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v3, v4, v8}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v6

    .line 58
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 60
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v4

    .line 59
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/bn;->a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/fy;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/bn;->b:Landroid/support/v7/widget/fy;

    .line 62
    :cond_0
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 64
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v4

    .line 63
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/bn;->a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/fy;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/bn;->c:Landroid/support/v7/widget/fy;

    .line 66
    :cond_1
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 68
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v4

    .line 67
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/bn;->a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/fy;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/bn;->d:Landroid/support/v7/widget/fy;

    .line 70
    :cond_2
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 72
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v4

    .line 71
    invoke-static {v5, v0, v4}, Landroid/support/v7/widget/bn;->a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/fy;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bn;->e:Landroid/support/v7/widget/fy;

    .line 1206
    :cond_3
    iget-object v0, v3, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v7, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 83
    const/4 v4, 0x0

    .line 86
    if-eq v6, v8, :cond_a

    .line 87
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v5, v6, v0}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/ga;

    move-result-object v6

    .line 88
    if-nez v7, :cond_9

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v0, v2}, Landroid/support/v7/widget/ga;->a(IZ)Z

    move-result v0

    move v3, v0

    move v0, v1

    .line 92
    :goto_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v9, :cond_4

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 93
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/ga;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 2206
    :cond_4
    iget-object v6, v6, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :goto_1
    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v5, p1, v6, p2, v2}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ga;

    move-result-object v5

    .line 104
    if-nez v7, :cond_5

    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v0, v2}, Landroid/support/v7/widget/ga;->a(IZ)Z

    move-result v3

    move v0, v1

    .line 108
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v9, :cond_6

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 109
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ga;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 3206
    :cond_6
    iget-object v1, v5, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    if-eqz v4, :cond_7

    .line 117
    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    :cond_7
    if-nez v7, :cond_8

    if-eqz v0, :cond_8

    .line 121
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/bn;->a(Z)V

    .line 123
    :cond_8
    return-void

    :cond_9
    move v0, v2

    move v3, v2

    goto :goto_0

    :cond_a
    move v0, v2

    move v3, v2

    goto :goto_1
.end method

.method final a(Z)V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/d/a;

    iget-object v2, p0, Landroid/support/v7/widget/bn;->a:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/d/a;-><init>(Landroid/content/Context;)V

    .line 149
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 152
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
