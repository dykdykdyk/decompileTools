.class final Landroid/support/v7/a/d;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field C:Landroid/view/View;

.field D:Landroid/widget/ListAdapter;

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:Landroid/os/Handler;

.field final N:Landroid/view/View$OnClickListener;

.field final a:Landroid/content/Context;

.field final b:Landroid/support/v7/a/av;

.field final c:Landroid/view/Window;

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/widget/ListView;

.field g:Landroid/view/View;

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Landroid/widget/Button;

.field o:Ljava/lang/CharSequence;

.field p:Landroid/os/Message;

.field q:Landroid/widget/Button;

.field r:Ljava/lang/CharSequence;

.field s:Landroid/os/Message;

.field t:Landroid/widget/Button;

.field u:Ljava/lang/CharSequence;

.field v:Landroid/os/Message;

.field w:Landroid/support/v4/widget/NestedScrollView;

.field x:I

.field y:Landroid/graphics/drawable/Drawable;

.field z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/a/av;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Landroid/support/v7/a/d;->m:Z

    .line 93
    iput v3, p0, Landroid/support/v7/a/d;->x:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/a/d;->E:I

    .line 112
    iput v3, p0, Landroid/support/v7/a/d;->L:I

    .line 116
    new-instance v0, Landroid/support/v7/a/e;

    invoke-direct {v0, p0}, Landroid/support/v7/a/e;-><init>(Landroid/support/v7/a/d;)V

    iput-object v0, p0, Landroid/support/v7/a/d;->N:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Landroid/support/v7/a/d;->a:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Landroid/support/v7/a/d;->b:Landroid/support/v7/a/av;

    .line 169
    iput-object p3, p0, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    .line 170
    new-instance v0, Landroid/support/v7/a/o;

    invoke-direct {v0, p2}, Landroid/support/v7/a/o;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/a/d;->M:Landroid/os/Handler;

    .line 172
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/d;->F:I

    .line 176
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/d;->G:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/d;->H:I

    .line 179
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/d;->I:I

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 181
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/d;->J:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/d;->K:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1137
    invoke-virtual {p2}, Landroid/support/v7/a/av;->a()Landroid/support/v7/a/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/u;->c(I)Z

    .line 188
    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 420
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 421
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 424
    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    :goto_1
    return-object v0

    .line 428
    :cond_0
    if-eqz p1, :cond_1

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 430
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 431
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 436
    :cond_1
    instance-of v0, p0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 437
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 440
    :goto_2
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1704
    if-eqz p1, :cond_0

    .line 1705
    const/4 v0, -0x1

    .line 1706
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1705
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    :cond_0
    if-eqz p2, :cond_1

    .line 1709
    const/4 v0, 0x1

    .line 1710
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1706
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1710
    goto :goto_1
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    :goto_0
    return v0

    .line 195
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 196
    goto :goto_0

    .line 199
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 201
    :cond_2
    if-lez v2, :cond_3

    .line 202
    add-int/lit8 v2, v2, -0x1

    .line 203
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 204
    invoke-static {v3}, Landroid/support/v7/a/d;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 209
    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/d;->y:Landroid/graphics/drawable/Drawable;

    .line 337
    iput p1, p0, Landroid/support/v7/a/d;->x:I

    .line 339
    iget-object v0, p0, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 340
    if-eqz p1, :cond_1

    .line 341
    iget-object v0, p0, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/a/d;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 303
    if-eqz p3, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v7/a/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 307
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/a/d;->o:Ljava/lang/CharSequence;

    .line 311
    iput-object p4, p0, Landroid/support/v7/a/d;->p:Landroid/os/Message;

    .line 322
    :goto_0
    return-void

    .line 315
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/a/d;->r:Ljava/lang/CharSequence;

    .line 316
    iput-object p4, p0, Landroid/support/v7/a/d;->s:Landroid/os/Message;

    goto :goto_0

    .line 320
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/a/d;->u:Ljava/lang/CharSequence;

    .line 321
    iput-object p4, p0, Landroid/support/v7/a/d;->v:Landroid/os/Message;

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Landroid/support/v7/a/d;->d:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Landroid/support/v7/a/d;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/v7/a/d;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method
