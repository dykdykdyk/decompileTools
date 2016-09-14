.class public Lcom/bingerz/android/countrycodepicker/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# static fields
.field public static a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/bingerz/android/countrycodepicker/h;

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    .line 50
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->b:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    .line 45
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->b:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    .line 40
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->b:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 90
    iget v2, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    .line 91
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->c:Lcom/bingerz/android/countrycodepicker/h;

    .line 93
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/SideBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sget-object v4, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 95
    packed-switch v0, :pswitch_data_0

    .line 105
    if-eq v2, v1, :cond_2

    .line 106
    if-ltz v1, :cond_2

    sget-object v0, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 107
    if-eqz v3, :cond_0

    .line 108
    sget-object v0, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Lcom/bingerz/android/countrycodepicker/h;->a(Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :cond_1
    iput v1, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    .line 115
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/SideBar;->invalidate()V

    .line 120
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 97
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    .line 98
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/SideBar;->invalidate()V

    .line 99
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/SideBar;->getHeight()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/SideBar;->getWidth()I

    move-result v1

    .line 64
    sget-object v2, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int v2, v0, v2

    .line 66
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    const/16 v4, 0x21

    const/16 v5, 0x41

    const/16 v6, 0x62

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->b:Landroid/content/Context;

    .line 1054
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1055
    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 71
    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    iget v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->d:I

    if-ne v0, v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    const-string v4, "#3399ff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 78
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    sget-object v5, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 79
    mul-int v4, v2, v0

    add-int/2addr v4, v2

    int-to-float v4, v4

    .line 80
    sget-object v5, Lcom/bingerz/android/countrycodepicker/SideBar;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 81
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/bingerz/android/countrycodepicker/h;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->c:Lcom/bingerz/android/countrycodepicker/h;

    .line 129
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/SideBar;->f:Landroid/widget/TextView;

    .line 35
    return-void
.end method
