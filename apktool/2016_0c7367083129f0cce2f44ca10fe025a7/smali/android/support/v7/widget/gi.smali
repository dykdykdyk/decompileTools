.class public final Landroid/support/v7/widget/gi;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/widget/bv;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/support/v7/widget/k;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 1

    .prologue
    .line 91
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/gi;-><init>(Landroid/support/v7/widget/Toolbar;ZI)V

    .line 93
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZI)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v2, p0, Landroid/support/v7/widget/gi;->o:I

    .line 87
    iput v2, p0, Landroid/support/v7/widget/gi;->p:I

    .line 97
    iput-object p1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gi;->b:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gi;->l:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/gi;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/gi;->k:Z

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gi;->j:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v0, v3, v4, v5, v2}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ga;

    move-result-object v4

    .line 104
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ga;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gi;->q:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p2, :cond_10

    .line 106
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ga;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2250
    iput-boolean v1, p0, Landroid/support/v7/widget/gi;->k:Z

    .line 2251
    invoke-direct {p0, v0}, Landroid/support/v7/widget/gi;->b(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ga;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2268
    iput-object v0, p0, Landroid/support/v7/widget/gi;->l:Ljava/lang/CharSequence;

    .line 2269
    iget v1, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 2270
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ga;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    invoke-direct {p0, v0}, Landroid/support/v7/widget/gi;->b(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ga;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gi;->a(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/gi;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/gi;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/gi;->q:Landroid/graphics/drawable/Drawable;

    .line 2588
    iput-object v0, p0, Landroid/support/v7/widget/gi;->j:Landroid/graphics/drawable/Drawable;

    .line 2589
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->t()V

    .line 128
    :cond_4
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/ga;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gi;->c(I)V

    .line 130
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3535
    iget-object v1, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 3536
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 3538
    :cond_5
    iput-object v0, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    .line 3539
    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 3540
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 135
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gi;->c(I)V

    .line 138
    :cond_7
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/ga;->f(II)I

    move-result v0

    .line 139
    if-lez v0, :cond_8

    .line 140
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 141
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_8
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v4, v0, v6}, Landroid/support/v7/widget/ga;->d(II)I

    move-result v0

    .line 147
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v4, v1, v6}, Landroid/support/v7/widget/ga;->d(II)I

    move-result v1

    .line 149
    if-gez v0, :cond_9

    if-ltz v1, :cond_a

    .line 150
    :cond_9
    iget-object v5, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 151
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4099
    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 4100
    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->i:Landroid/support/v7/widget/fb;

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/fb;->a(II)V

    .line 154
    :cond_a
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v0

    .line 155
    if-eqz v0, :cond_b

    .line 156
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 4831
    iput v0, v1, Landroid/support/v7/widget/Toolbar;->g:I

    .line 4832
    iget-object v6, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    .line 4833
    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_b
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v0

    .line 161
    if-eqz v0, :cond_c

    .line 162
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 4842
    iput v0, v1, Landroid/support/v7/widget/Toolbar;->h:I

    .line 4843
    iget-object v6, v1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 4844
    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_c
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/ga;->g(II)I

    move-result v0

    .line 166
    if-eqz v0, :cond_d

    .line 167
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 6206
    :cond_d
    :goto_1
    iget-object v0, v4, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7191
    iget v0, p0, Landroid/support/v7/widget/gi;->p:I

    if-eq p3, v0, :cond_e

    .line 7194
    iput p3, p0, Landroid/support/v7/widget/gi;->p:I

    .line 7195
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7196
    iget v0, p0, Landroid/support/v7/widget/gi;->p:I

    .line 7621
    if-nez v0, :cond_12

    move-object v0, v3

    .line 8615
    :goto_2
    iput-object v0, p0, Landroid/support/v7/widget/gi;->m:Ljava/lang/CharSequence;

    .line 8616
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->u()V

    .line 175
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gi;->m:Ljava/lang/CharSequence;

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/widget/gj;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/gj;-><init>(Landroid/support/v7/widget/gi;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void

    :cond_f
    move v0, v2

    .line 100
    goto/16 :goto_0

    .line 5201
    :cond_10
    const/16 v0, 0xb

    .line 5203
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 5204
    const/16 v0, 0xf

    .line 5205
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/gi;->q:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_11
    iput v0, p0, Landroid/support/v7/widget/gi;->e:I

    goto :goto_1

    .line 8217
    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7621
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Landroid/support/v7/widget/gi;->i:Landroid/graphics/drawable/Drawable;

    .line 313
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->s()V

    .line 314
    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Landroid/support/v7/widget/gi;->b:Ljava/lang/CharSequence;

    .line 256
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    iget v1, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 319
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Landroid/support/v7/widget/gi;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gi;->i:Landroid/graphics/drawable/Drawable;

    .line 325
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/gi;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/gi;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 607
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/gi;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/gi;->j:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 611
    :goto_1
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gi;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private u()V
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/gi;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/gi;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 562
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/gk;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/gk;-><init>(Landroid/support/v7/widget/gi;I)V

    .line 564
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 9217
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gi;->a(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Landroid/support/v7/widget/gi;->h:Landroid/graphics/drawable/Drawable;

    .line 302
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->s()V

    .line 303
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/af;Landroid/support/v7/view/menu/p;)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 16153
    iput-object p1, v0, Landroid/support/v7/widget/Toolbar;->m:Landroid/support/v7/view/menu/af;

    .line 16154
    iput-object p2, v0, Landroid/support/v7/widget/Toolbar;->n:Landroid/support/v7/view/menu/p;

    .line 16155
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 16156
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/view/menu/af;Landroid/support/v7/view/menu/p;)V

    .line 669
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/fd;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 417
    iget-object v0, p0, Landroid/support/v7/widget/gi;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/gi;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 420
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/gi;->f:Landroid/view/View;

    .line 421
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/gi;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/gi;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/gf;

    .line 424
    iput v3, v0, Landroid/support/v7/widget/gf;->width:I

    .line 425
    iput v3, v0, Landroid/support/v7/widget/gf;->height:I

    .line 426
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/gf;->a:I

    .line 427
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/fd;->setAllowCollapse(Z)V

    .line 429
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/view/menu/af;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 360
    iget-object v0, p0, Landroid/support/v7/widget/gi;->n:Landroid/support/v7/widget/k;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Landroid/support/v7/widget/k;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/gi;->n:Landroid/support/v7/widget/k;

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/gi;->n:Landroid/support/v7/widget/k;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    .line 13235
    iput v1, v0, Landroid/support/v7/view/menu/d;->h:I

    .line 364
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gi;->n:Landroid/support/v7/widget/k;

    .line 14148
    iput-object p2, v0, Landroid/support/v7/view/menu/d;->f:Landroid/support/v7/view/menu/af;

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->n:Landroid/support/v7/widget/k;

    .line 14542
    if-nez p1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_4

    .line 14546
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 14547
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 14667
    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    .line 14548
    if-eq v2, p1, :cond_4

    .line 14552
    if-eqz v2, :cond_2

    .line 14553
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->k:Landroid/support/v7/widget/k;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/ae;)V

    .line 14554
    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/ae;)V

    .line 14557
    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    if-nez v2, :cond_3

    .line 14558
    new-instance v2, Landroid/support/v7/widget/ge;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/support/v7/widget/ge;-><init>(Landroid/support/v7/widget/Toolbar;B)V

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    .line 15162
    :cond_3
    iput-boolean v4, v1, Landroid/support/v7/widget/k;->n:Z

    .line 14562
    if-eqz p1, :cond_5

    .line 14563
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;Landroid/content/Context;)V

    .line 14564
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/content/Context;

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;Landroid/content/Context;)V

    .line 14571
    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->f:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 14572
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/k;)V

    .line 14573
    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->k:Landroid/support/v7/widget/k;

    .line 366
    :cond_4
    return-void

    .line 14566
    :cond_5
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Landroid/support/v7/widget/k;->a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V

    .line 14567
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/widget/ge;->a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V

    .line 14568
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/k;->a(Z)V

    .line 14569
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ge;->a(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/v7/widget/gi;->c:Landroid/view/Window$Callback;

    .line 233
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/widget/gi;->k:Z

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Landroid/support/v7/widget/gi;->b(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 444
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 10217
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/gi;->b(Landroid/graphics/drawable/Drawable;)V

    .line 308
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    .line 381
    xor-int/2addr v0, p1

    .line 382
    iput p1, p0, Landroid/support/v7/widget/gi;->e:I

    .line 383
    if-eqz v0, :cond_4

    .line 384
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 385
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 386
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->u()V

    .line 388
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->t()V

    .line 391
    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 392
    invoke-direct {p0}, Landroid/support/v7/widget/gi;->s()V

    .line 395
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 396
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 397
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/gi;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/gi;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 405
    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 406
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 413
    :cond_4
    :goto_1
    return-void

    .line 400
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 409
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/gi;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 8695
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->l:Landroid/support/v7/widget/ge;

    iget-object v0, v0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 222
    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()V

    .line 228
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 658
    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 10504
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 10567
    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    .line 10504
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 330
    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    iget-object v2, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 11519
    iget-object v3, v2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_3

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 11700
    iget-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    .line 12410
    iget-object v3, v2, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 11700
    :goto_0
    if-eqz v2, :cond_2

    move v2, v0

    .line 11519
    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v2, v1

    .line 12410
    goto :goto_0

    :cond_2
    move v2, v1

    .line 11700
    goto :goto_1

    :cond_3
    move v0, v1

    .line 340
    goto :goto_2
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 12537
    iget-object v3, v2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 12685
    iget-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v2}, Landroid/support/v7/widget/k;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 12537
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 12685
    goto :goto_0

    :cond_1
    move v0, v1

    .line 350
    goto :goto_1
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/gi;->d:Z

    .line 356
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    .line 15580
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 15581
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->b()V

    .line 371
    :cond_0
    return-void
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Landroid/support/v7/widget/gi;->e:I

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Landroid/support/v7/widget/gi;->o:I

    return v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public final r()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/gi;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
