.class final Landroid/support/v7/widget/aj;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/ap;

.field private c:I

.field private d:Landroid/support/v7/widget/ak;

.field private e:Landroid/support/v7/widget/ak;

.field private f:Landroid/support/v7/widget/ak;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aj;->c:I

    .line 41
    iput-object p1, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    .line 42
    invoke-static {}, Landroid/support/v7/widget/ap;->a()Landroid/support/v7/widget/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ap;

    .line 43
    return-void
.end method

.method private b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ak;-><init>(B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    iput-object p1, v0, Landroid/support/v7/widget/ak;->b:Landroid/content/res/ColorStateList;

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->e:Z

    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->d()V

    .line 187
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-boolean v1, v1, Landroid/support/v7/widget/ak;->e:Z

    if-eqz v1, :cond_1

    .line 117
    iget v1, p0, Landroid/support/v7/widget/aj;->c:I

    if-ltz v1, :cond_0

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ap;

    iget-object v2, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/aj;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v4, v4, Landroid/support/v7/widget/ak;->a:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iput-object v1, v2, Landroid/support/v7/widget/ak;->b:Landroid/content/res/ColorStateList;

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v1, v1, Landroid/support/v7/widget/ak;->b:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->a:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_1

    .line 130
    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v2, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v2, v2, Landroid/support/v7/widget/ak;->a:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/v7/widget/ak;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aj;->c:I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/aj;->b(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/aj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->d()V

    .line 93
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Landroid/support/v7/widget/aj;->c:I

    .line 76
    iget-object v1, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ap;

    iget-object v2, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3518
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/aj;->b(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/aj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->d()V

    .line 83
    :cond_1
    return-void
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ak;-><init>(B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iput-object p1, v0, Landroid/support/v7/widget/ak;->a:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ak;->b:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->e:Z

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/aj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->d()V

    .line 109
    :cond_1
    return-void
.end method

.method final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ak;-><init>(B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iput-object p1, v0, Landroid/support/v7/widget/ak;->c:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->d:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->d()V

    .line 149
    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ga;

    move-result-object v1

    .line 49
    :try_start_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aj;->c:I

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/aj;->b:Landroid/support/v7/widget/ap;

    iget-object v2, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/aj;->c:I

    .line 1518
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, v0}, Landroid/support/v7/widget/aj;->b(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ga;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ga;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ga;->a(II)I

    move-result v2

    const/4 v3, 0x0

    .line 64
    invoke-static {v2, v3}, Landroid/support/v7/widget/ci;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    :cond_2
    iget-object v0, v1, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 3206
    iget-object v1, v1, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    throw v0
.end method

.method final b()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->b:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v0, v0, Landroid/support/v7/widget/ak;->c:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    iget-object v2, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_6

    .line 4195
    iget-object v3, p0, Landroid/support/v7/widget/aj;->f:Landroid/support/v7/widget/ak;

    if-nez v3, :cond_0

    .line 4196
    new-instance v3, Landroid/support/v7/widget/ak;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/ak;-><init>(B)V

    iput-object v3, p0, Landroid/support/v7/widget/aj;->f:Landroid/support/v7/widget/ak;

    .line 4198
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/aj;->f:Landroid/support/v7/widget/ak;

    .line 4199
    invoke-virtual {v3}, Landroid/support/v7/widget/fy;->a()V

    .line 4201
    iget-object v4, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 4202
    if-eqz v4, :cond_1

    .line 4203
    iput-boolean v1, v3, Landroid/support/v7/widget/fy;->e:Z

    .line 4204
    iput-object v4, v3, Landroid/support/v7/widget/fy;->b:Landroid/content/res/ColorStateList;

    .line 4206
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 4207
    if-eqz v4, :cond_2

    .line 4208
    iput-boolean v1, v3, Landroid/support/v7/widget/fy;->d:Z

    .line 4209
    iput-object v4, v3, Landroid/support/v7/widget/fy;->c:Landroid/graphics/PorterDuff$Mode;

    .line 4212
    :cond_2
    iget-boolean v4, v3, Landroid/support/v7/widget/fy;->e:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Landroid/support/v7/widget/fy;->d:Z

    if-eqz v4, :cond_4

    .line 4213
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;[I)V

    move v0, v1

    .line 158
    :cond_4
    if-eqz v0, :cond_6

    .line 174
    :cond_5
    :goto_0
    return-void

    .line 166
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 167
    invoke-static {v2, v0, v1}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;[I)V

    goto :goto_0

    .line 169
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->a:Landroid/view/View;

    .line 171
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 170
    invoke-static {v2, v0, v1}, Landroid/support/v7/widget/ap;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/fy;[I)V

    goto :goto_0
.end method
