.class public Landroid/support/v7/widget/ct;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ct;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ct;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-boolean v2, p0, Landroid/support/v7/widget/ct;->a:Z

    .line 104
    iput v5, p0, Landroid/support/v7/widget/ct;->b:I

    .line 111
    iput v4, p0, Landroid/support/v7/widget/ct;->c:I

    .line 115
    const v0, 0x800033

    iput v0, p0, Landroid/support/v7/widget/ct;->e:I

    .line 150
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v4}, Landroid/support/v7/widget/ga;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ga;

    move-result-object v0

    .line 153
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/ga;->a(II)I

    move-result v1

    .line 154
    if-ltz v1, :cond_0

    .line 155
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->setOrientation(I)V

    .line 158
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/ga;->a(II)I

    move-result v1

    .line 159
    if-ltz v1, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->setGravity(I)V

    .line 163
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ga;->a(IZ)Z

    move-result v1

    .line 164
    if-nez v1, :cond_2

    .line 165
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->setBaselineAligned(Z)V

    .line 168
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    .line 2120
    iget-object v2, v0, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 168
    iput v1, p0, Landroid/support/v7/widget/ct;->g:F

    .line 170
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 171
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/ga;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ct;->b:I

    .line 173
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/ga;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/ct;->h:Z

    .line 175
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ga;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/ga;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ct;->n:I

    .line 177
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/ga;->e(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ct;->o:I

    .line 2206
    iget-object v0, v0, Landroid/support/v7/widget/ga;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    return-void
.end method

.method private a(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 888
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 890
    :goto_0
    if-ge v7, p1, :cond_1

    .line 10499
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 892
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 893
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/cu;

    .line 895
    iget v0, v6, Landroid/support/v7/widget/cu;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 898
    iget v8, v6, Landroid/support/v7/widget/cu;->height:I

    .line 899
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/cu;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 902
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ct;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 903
    iput v8, v6, Landroid/support/v7/widget/cu;->height:I

    .line 890
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 907
    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/ct;->o:I

    add-int/2addr v1, v2

    .line 358
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/ct;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/ct;->m:I

    add-int/2addr v3, p2

    .line 357
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1371
    invoke-virtual/range {p0 .. p5}, Landroid/support/v7/widget/ct;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1373
    return-void
.end method

.method private a(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    if-nez p1, :cond_2

    .line 560
    iget v2, p0, Landroid/support/v7/widget/ct;->n:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 560
    goto :goto_0

    .line 561
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 562
    iget v2, p0, Landroid/support/v7/widget/ct;->n:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 563
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/ct;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 565
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 566
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 565
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 573
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private b(II)V
    .locals 29

    .prologue
    .line 921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 922
    const/16 v18, 0x0

    .line 923
    const/16 v17, 0x0

    .line 924
    const/16 v16, 0x0

    .line 925
    const/4 v15, 0x0

    .line 926
    const/4 v14, 0x1

    .line 927
    const/4 v4, 0x0

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getVirtualChildCount()I

    move-result v21

    .line 931
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 932
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 934
    const/4 v10, 0x0

    .line 935
    const/4 v12, 0x0

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ct;->i:[I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ct;->j:[I

    if-nez v2, :cond_1

    .line 938
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/ct;->i:[I

    .line 939
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/ct;->j:[I

    .line 942
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ct;->i:[I

    move-object/from16 v24, v0

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ct;->j:[I

    move-object/from16 v25, v0

    .line 945
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v24, v6

    aput v7, v24, v5

    aput v7, v24, v3

    aput v7, v24, v2

    .line 946
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v25, v6

    aput v7, v25, v5

    aput v7, v25, v3

    aput v7, v25, v2

    .line 948
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ct;->a:Z

    move/from16 v26, v0

    .line 949
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ct;->h:Z

    move/from16 v27, v0

    .line 951
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    move v9, v2

    .line 953
    :goto_0
    const/high16 v11, -0x80000000

    .line 956
    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 11499
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 959
    if-nez v3, :cond_3

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    add-int/lit8 v2, v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    move/from16 v2, v19

    .line 956
    :goto_2
    add-int/lit8 v19, v2, 0x1

    goto :goto_1

    .line 951
    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    .line 964
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_34

    .line 969
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 970
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ct;->l:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 974
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/cu;

    .line 976
    iget v2, v8, Landroid/support/v7/widget/cu;->g:F

    add-float v13, v4, v2

    .line 978
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    iget v2, v8, Landroid/support/v7/widget/cu;->width:I

    if-nez v2, :cond_8

    iget v2, v8, Landroid/support/v7/widget/cu;->g:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    .line 982
    if-eqz v9, :cond_6

    .line 983
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    iget v4, v8, Landroid/support/v7/widget/cu;->leftMargin:I

    iget v5, v8, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 995
    :goto_3
    if-eqz v26, :cond_7

    .line 996
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 997
    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    move v7, v11

    move v11, v12

    .line 1040
    :goto_4
    const/4 v2, 0x0

    .line 1041
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_32

    iget v4, v8, Landroid/support/v7/widget/cu;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    .line 1045
    const/4 v4, 0x1

    .line 1046
    const/4 v2, 0x1

    .line 1049
    :goto_5
    iget v5, v8, Landroid/support/v7/widget/cu;->topMargin:I

    iget v6, v8, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1050
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 1052
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v10

    .line 1051
    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/support/v7/widget/gq;->a(II)I

    move-result v10

    .line 1054
    if-eqz v26, :cond_5

    .line 1055
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 1056
    const/4 v3, -0x1

    if-eq v12, v3, :cond_5

    .line 1059
    iget v3, v8, Landroid/support/v7/widget/cu;->h:I

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->e:I

    :goto_6
    and-int/lit8 v3, v3, 0x70

    .line 1061
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1064
    aget v17, v24, v3

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v24, v3

    .line 1065
    aget v17, v25, v3

    sub-int v12, v6, v12

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v25, v3

    .line 1069
    :cond_5
    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1071
    if-eqz v14, :cond_e

    iget v3, v8, Landroid/support/v7/widget/cu;->height:I

    const/4 v14, -0x1

    if-ne v3, v14, :cond_e

    const/4 v3, 0x1

    .line 1072
    :goto_7
    iget v8, v8, Landroid/support/v7/widget/cu;->g:F

    const/4 v14, 0x0

    cmpl-float v8, v8, v14

    if-lez v8, :cond_10

    .line 1077
    if-eqz v2, :cond_f

    move v2, v5

    :goto_8
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v13

    move v6, v3

    move/from16 v8, v16

    move v3, v11

    move v11, v12

    move/from16 v28, v7

    move v7, v2

    move/from16 v2, v28

    .line 1084
    :goto_9
    add-int/lit8 v12, v19, 0x0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v18, v11

    move v11, v2

    move v10, v4

    move v2, v12

    move v4, v5

    move v12, v3

    goto/16 :goto_2

    .line 985
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 986
    iget v4, v8, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v8, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    goto/16 :goto_3

    .line 999
    :cond_7
    const/4 v12, 0x1

    move v7, v11

    move v11, v12

    goto/16 :goto_4

    .line 1002
    :cond_8
    const/high16 v2, -0x80000000

    .line 1004
    iget v4, v8, Landroid/support/v7/widget/cu;->width:I

    if-nez v4, :cond_9

    iget v4, v8, Landroid/support/v7/widget/cu;->g:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1009
    const/4 v2, 0x0

    .line 1010
    const/4 v4, -0x2

    iput v4, v8, Landroid/support/v7/widget/cu;->width:I

    :cond_9
    move/from16 v20, v2

    .line 1017
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ct;->f:I

    :goto_a
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/ct;->a(Landroid/view/View;IIII)V

    .line 1021
    const/high16 v2, -0x80000000

    move/from16 v0, v20

    if-eq v0, v2, :cond_a

    .line 1022
    move/from16 v0, v20

    iput v0, v8, Landroid/support/v7/widget/cu;->width:I

    .line 1025
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1026
    if-eqz v9, :cond_c

    .line 1027
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->f:I

    iget v5, v8, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v5, v2

    iget v6, v8, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v5, v6

    .line 1028
    add-int/lit8 v5, v5, 0x0

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1035
    :goto_b
    if-eqz v27, :cond_33

    .line 1036
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v7, v11

    move v11, v12

    goto/16 :goto_4

    .line 1017
    :cond_b
    const/4 v5, 0x0

    goto :goto_a

    .line 1030
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1031
    add-int v5, v4, v2

    iget v6, v8, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v8, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v5, v6

    .line 1032
    add-int/lit8 v5, v5, 0x0

    .line 1031
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/ct;->f:I

    goto :goto_b

    .line 1059
    :cond_d
    iget v3, v8, Landroid/support/v7/widget/cu;->h:I

    goto/16 :goto_6

    .line 1071
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_f
    move v2, v6

    .line 1077
    goto/16 :goto_8

    .line 1080
    :cond_10
    if-eqz v2, :cond_11

    :goto_c
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v13

    move v6, v3

    move v8, v2

    move v3, v11

    move v2, v7

    move v7, v15

    move v11, v12

    goto/16 :goto_9

    :cond_11
    move v5, v6

    goto :goto_c

    .line 1087
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1088
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->l:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1093
    :cond_13
    const/4 v2, 0x1

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x2

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 1097
    :cond_14
    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, 0x1

    aget v5, v24, v5

    const/4 v6, 0x2

    aget v6, v24, v6

    .line 1099
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1098
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1097
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1100
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    aget v6, v25, v6

    const/4 v7, 0x2

    aget v7, v25, v7

    .line 1102
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1101
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1100
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1103
    add-int/2addr v2, v3

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1106
    :goto_d
    if-eqz v27, :cond_19

    const/high16 v2, -0x80000000

    move/from16 v0, v22

    if-eq v0, v2, :cond_15

    if-nez v22, :cond_19

    .line 1108
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1110
    const/4 v3, 0x0

    :goto_e
    move/from16 v0, v21

    if-ge v3, v0, :cond_19

    .line 12499
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1113
    if-nez v2, :cond_16

    .line 1114
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    add-int/lit8 v2, v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    move v2, v3

    .line 1110
    :goto_f
    add-int/lit8 v3, v2, 0x1

    goto :goto_e

    .line 1118
    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_17

    .line 1119
    add-int/lit8 v2, v3, 0x0

    .line 1120
    goto :goto_f

    .line 1124
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cu;

    .line 1125
    if-eqz v9, :cond_18

    .line 1126
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ct;->f:I

    iget v7, v2, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v7, v11

    iget v2, v2, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v2, v7

    .line 1127
    add-int/lit8 v2, v2, 0x0

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    move v2, v3

    goto :goto_f

    .line 1129
    :cond_18
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1130
    add-int v7, v6, v11

    iget v8, v2, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v7, v8

    iget v2, v2, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v2, v7

    .line 1131
    add-int/lit8 v2, v2, 0x0

    .line 1130
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    move v2, v3

    goto :goto_f

    .line 1137
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1139
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1142
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1145
    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v18

    .line 1146
    const v2, 0xffffff

    and-int v2, v2, v18

    .line 1151
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    sub-int v6, v2, v3

    .line 1152
    if-nez v12, :cond_1a

    if-eqz v6, :cond_2a

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2a

    .line 1153
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->g:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->g:F

    .line 1155
    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v24, v7

    aput v8, v24, v5

    aput v8, v24, v3

    aput v8, v24, v2

    .line 1156
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v3

    aput v8, v25, v2

    .line 1157
    const/4 v7, -0x1

    .line 1159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1161
    const/4 v2, 0x0

    move v15, v2

    move v11, v14

    move/from16 v12, v16

    move v14, v7

    move/from16 v7, v17

    :goto_10
    move/from16 v0, v21

    if-ge v15, v0, :cond_26

    .line 13499
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1164
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    .line 1169
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cu;

    .line 1171
    iget v8, v2, Landroid/support/v7/widget/cu;->g:F

    .line 1172
    const/4 v3, 0x0

    cmpl-float v3, v8, v3

    if-lez v3, :cond_2f

    .line 1174
    int-to-float v3, v6

    mul-float/2addr v3, v8

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1175
    sub-float v8, v4, v8

    .line 1176
    sub-int/2addr v6, v3

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v13

    add-int/2addr v4, v13

    iget v13, v2, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v4, v13

    iget v13, v2, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v4, v13

    iget v13, v2, Landroid/support/v7/widget/cu;->height:I

    .line 1178
    move/from16 v0, p2

    invoke-static {v0, v4, v13}, Landroid/support/v7/widget/ct;->getChildMeasureSpec(III)I

    move-result v13

    .line 1185
    iget v4, v2, Landroid/support/v7/widget/cu;->width:I

    if-nez v4, :cond_1c

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v4, :cond_1f

    .line 1188
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1189
    if-gez v3, :cond_1d

    .line 1190
    const/4 v3, 0x0

    :cond_1d
    move-object v4, v5

    .line 1198
    :goto_11
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v13}, Landroid/view/View;->measure(II)V

    .line 1205
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    .line 1204
    invoke-static {v7, v3}, Landroid/support/v7/widget/gq;->a(II)I

    move-result v13

    move v7, v8

    move v8, v6

    .line 1208
    :goto_12
    if-eqz v9, :cond_21

    .line 1209
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v6, v2, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v4, v6

    .line 1210
    add-int/lit8 v4, v4, 0x0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1217
    :goto_13
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_22

    iget v3, v2, Landroid/support/v7/widget/cu;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    const/4 v3, 0x1

    .line 1220
    :goto_14
    iget v4, v2, Landroid/support/v7/widget/cu;->topMargin:I

    iget v6, v2, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v4, v6

    .line 1221
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 1222
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1223
    if-eqz v3, :cond_23

    move v3, v4

    :goto_15
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1226
    if-eqz v11, :cond_24

    iget v3, v2, Landroid/support/v7/widget/cu;->height:I

    const/4 v11, -0x1

    if-ne v3, v11, :cond_24

    const/4 v3, 0x1

    .line 1228
    :goto_16
    if-eqz v26, :cond_1e

    .line 1229
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 1230
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1e

    .line 1232
    iget v11, v2, Landroid/support/v7/widget/cu;->h:I

    if-gez v11, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->e:I

    :goto_17
    and-int/lit8 v2, v2, 0x70

    .line 1234
    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, -0x2

    shr-int/lit8 v2, v2, 0x1

    .line 1237
    aget v11, v24, v2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v24, v2

    .line 1238
    aget v11, v25, v2

    sub-int v5, v6, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v25, v2

    :cond_1e
    move v2, v7

    move v5, v4

    move v6, v13

    move v4, v3

    move v7, v14

    move v3, v8

    .line 1161
    :goto_18
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    move v11, v4

    move v12, v5

    move v14, v7

    move v7, v6

    move v4, v2

    move v6, v3

    goto/16 :goto_10

    .line 1198
    :cond_1f
    if-lez v3, :cond_20

    move-object v4, v5

    goto/16 :goto_11

    :cond_20
    const/4 v3, 0x0

    move-object v4, v5

    goto/16 :goto_11

    .line 1212
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1213
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget v6, v2, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v4, v6

    .line 1214
    add-int/lit8 v4, v4, 0x0

    .line 1213
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    goto/16 :goto_13

    .line 1217
    :cond_22
    const/4 v3, 0x0

    goto :goto_14

    :cond_23
    move v3, v6

    .line 1223
    goto :goto_15

    .line 1226
    :cond_24
    const/4 v3, 0x0

    goto :goto_16

    .line 1232
    :cond_25
    iget v2, v2, Landroid/support/v7/widget/cu;->h:I

    goto :goto_17

    .line 1245
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/ct;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/ct;->f:I

    .line 1250
    const/4 v2, 0x1

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x0

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 1254
    :cond_27
    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v4, 0x1

    aget v4, v24, v4

    const/4 v5, 0x2

    aget v5, v24, v5

    .line 1256
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1255
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1254
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1257
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    .line 1259
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1258
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1257
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1260
    add-int/2addr v2, v3

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_28
    move v2, v12

    move/from16 v17, v7

    move v3, v14

    move v14, v11

    .line 1289
    :goto_19
    if-nez v14, :cond_2d

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_2d

    .line 1293
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1298
    const/high16 v3, -0x1000000

    and-int v3, v3, v17

    or-int v3, v3, v18

    shl-int/lit8 v4, v17, 0x10

    .line 1299
    move/from16 v0, p2

    invoke-static {v2, v0, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    .line 1298
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/ct;->setMeasuredDimension(II)V

    .line 1302
    if-eqz v10, :cond_2c

    .line 15311
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 15313
    const/4 v2, 0x0

    move v9, v2

    :goto_1b
    move/from16 v0, v21

    if-ge v9, v0, :cond_2c

    .line 15499
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 15315
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_29

    .line 15316
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/cu;

    .line 15318
    iget v2, v8, Landroid/support/v7/widget/cu;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_29

    .line 15321
    iget v10, v8, Landroid/support/v7/widget/cu;->width:I

    .line 15322
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/cu;->width:I

    .line 15325
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/ct;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 15326
    iput v10, v8, Landroid/support/v7/widget/cu;->width:I

    .line 15313
    :cond_29
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1b

    .line 1263
    :cond_2a
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1267
    if-eqz v27, :cond_2e

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v2, :cond_2e

    .line 1268
    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    move/from16 v0, v21

    if-ge v3, v0, :cond_2e

    .line 14499
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1271
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_2b

    .line 1276
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cu;

    .line 1278
    iget v2, v2, Landroid/support/v7/widget/cu;->g:F

    .line 1279
    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2b

    .line 1280
    const/high16 v2, 0x40000000    # 2.0f

    .line 1281
    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1282
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1280
    invoke-virtual {v4, v2, v6}, Landroid/view/View;->measure(II)V

    .line 1268
    :cond_2b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1c

    .line 1305
    :cond_2c
    return-void

    :cond_2d
    move v2, v3

    goto/16 :goto_1a

    :cond_2e
    move v2, v12

    move v3, v5

    goto/16 :goto_19

    :cond_2f
    move v8, v6

    move v13, v7

    move v7, v4

    goto/16 :goto_12

    :cond_30
    move v2, v4

    move v3, v6

    move v5, v12

    move v4, v11

    move v6, v7

    move v7, v14

    goto/16 :goto_18

    :cond_31
    move/from16 v5, v18

    goto/16 :goto_d

    :cond_32
    move v4, v10

    goto/16 :goto_5

    :cond_33
    move v7, v11

    move v11, v12

    goto/16 :goto_4

    :cond_34
    move v2, v11

    move v3, v12

    move v5, v4

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move v4, v10

    move/from16 v11, v18

    move/from16 v10, v17

    goto/16 :goto_9
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/ct;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/ct;->l:I

    add-int/2addr v2, p2

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/ct;->o:I

    sub-int/2addr v3, v4

    .line 363
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method private static b(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1639
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1640
    return-void
.end method

.method private static getChildrenSkipCount$5359dca7()I
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method private static getLocationOffset$3c7ec8d0()I
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x0

    return v0
.end method

.method private static getNextLocationOffset$3c7ec8d0()I
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/cu;
    .locals 2

    .prologue
    .line 1705
    new-instance v0, Landroid/support/v7/widget/cu;

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/cu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/cu;
    .locals 1

    .prologue
    .line 1728
    new-instance v0, Landroid/support/v7/widget/cu;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected c()Landroid/support/v7/widget/cu;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1718
    iget v0, p0, Landroid/support/v7/widget/ct;->d:I

    if-nez v0, :cond_0

    .line 1719
    new-instance v0, Landroid/support/v7/widget/cu;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/cu;-><init>(II)V

    .line 1723
    :goto_0
    return-object v0

    .line 1720
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ct;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1721
    new-instance v0, Landroid/support/v7/widget/cu;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/cu;-><init>(II)V

    goto :goto_0

    .line 1723
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1735
    instance-of v0, p1, Landroid/support/v7/widget/cu;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->c()Landroid/support/v7/widget/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ct;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/cu;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ct;->b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/cu;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 417
    iget v1, p0, Landroid/support/v7/widget/ct;->b:I

    if-gez v1, :cond_1

    .line 418
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/ct;->b:I

    if-gt v1, v2, :cond_2

    .line 422
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/ct;->b:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 429
    if-ne v3, v0, :cond_3

    .line 430
    iget v1, p0, Landroid/support/v7/widget/ct;->b:I

    if-eqz v1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    .line 448
    iget v1, p0, Landroid/support/v7/widget/ct;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 449
    iget v1, p0, Landroid/support/v7/widget/ct;->e:I

    and-int/lit8 v1, v1, 0x70

    .line 450
    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    .line 451
    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    .line 464
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cu;

    .line 465
    iget v0, v0, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    .line 453
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ct;->f:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 454
    goto :goto_1

    .line 457
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v7/widget/ct;->f:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Landroid/support/v7/widget/ct;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Landroid/support/v7/widget/ct;->l:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1661
    iget v0, p0, Landroid/support/v7/widget/ct;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/widget/ct;->n:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/support/v7/widget/ct;->g:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/ct;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 2289
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getVirtualChildCount()I

    move-result v2

    move v1, v0

    .line 2290
    :goto_1
    if-ge v1, v2, :cond_3

    .line 2499
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2293
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 2294
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2295
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cu;

    .line 2296
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/cu;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroid/support/v7/widget/ct;->m:I

    sub-int/2addr v0, v3

    .line 2297
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ct;->a(Landroid/graphics/Canvas;I)V

    .line 2290
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2302
    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2303
    add-int/lit8 v0, v2, -0x1

    .line 3499
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2305
    if-nez v1, :cond_4

    .line 2306
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ct;->m:I

    sub-int/2addr v0, v1

    .line 2311
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ct;->a(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 2308
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cu;

    .line 2309
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 4316
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getVirtualChildCount()I

    move-result v2

    .line 4317
    invoke-static {p0}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;)Z

    move-result v3

    move v1, v0

    .line 4318
    :goto_3
    if-ge v1, v2, :cond_8

    .line 4499
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4321
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 4322
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4323
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cu;

    .line 4325
    if-eqz v3, :cond_7

    .line 4326
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v0, v4

    .line 4330
    :goto_4
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ct;->b(Landroid/graphics/Canvas;I)V

    .line 4318
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 4328
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/cu;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroid/support/v7/widget/ct;->l:I

    sub-int/2addr v0, v4

    goto :goto_4

    .line 4335
    :cond_8
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4336
    add-int/lit8 v0, v2, -0x1

    .line 5499
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4338
    if-nez v1, :cond_a

    .line 4339
    if-eqz v3, :cond_9

    .line 4340
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v0

    .line 4352
    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ct;->b(Landroid/graphics/Canvas;I)V

    goto/16 :goto_0

    .line 4342
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ct;->l:I

    sub-int/2addr v0, v1

    goto :goto_5

    .line 4345
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cu;

    .line 4346
    if-eqz v3, :cond_b

    .line 4347
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/cu;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/v7/widget/ct;->l:I

    sub-int/2addr v0, v1

    goto :goto_5

    .line 4349
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 1739
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1740
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1741
    const-class v0, Landroid/support/v7/widget/ct;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1743
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 1746
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1747
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1748
    const-class v0, Landroid/support/v7/widget/ct;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1750
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    .prologue
    .line 1400
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 16420
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v8

    .line 16426
    sub-int v3, p4, p2

    .line 16427
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v4

    sub-int v9, v3, v4

    .line 16430
    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v4

    sub-int v10, v3, v4

    .line 16432
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getVirtualChildCount()I

    move-result v11

    .line 16434
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->e:I

    and-int/lit8 v3, v3, 0x70

    .line 16435
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->e:I

    const v5, 0x800007

    and-int/2addr v5, v4

    .line 16437
    sparse-switch v3, :sswitch_data_0

    .line 16450
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v3

    .line 16454
    :goto_0
    const/4 v7, 0x0

    move v6, v3

    :goto_1
    if-ge v7, v11, :cond_7

    .line 17499
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 16456
    if-nez v12, :cond_0

    .line 16457
    add-int/lit8 v6, v6, 0x0

    move v3, v7

    .line 16454
    :goto_2
    add-int/lit8 v7, v3, 0x1

    goto :goto_1

    .line 16440
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v3

    add-int v3, v3, p5

    sub-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->f:I

    sub-int/2addr v3, v4

    .line 16441
    goto :goto_0

    .line 16445
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ct;->f:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 16446
    goto :goto_0

    .line 16458
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_c

    .line 16459
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 16460
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 16463
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/cu;

    .line 16465
    iget v4, v3, Landroid/support/v7/widget/cu;->h:I

    .line 16466
    if-gez v4, :cond_1

    move v4, v5

    .line 16469
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    .line 16470
    invoke-static {v4, v15}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 16472
    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_1

    .line 16484
    iget v4, v3, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v4, v8

    .line 16488
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 16489
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/ct;->m:I

    add-int/2addr v6, v15

    .line 16492
    :cond_2
    iget v15, v3, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v6, v15

    .line 16493
    add-int/lit8 v15, v6, 0x0

    invoke-static {v12, v4, v15, v13, v14}, Landroid/support/v7/widget/ct;->b(Landroid/view/View;IIII)V

    .line 16495
    iget v3, v3, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x0

    add-int/2addr v6, v3

    .line 16497
    add-int/lit8 v3, v7, 0x0

    goto :goto_2

    .line 16474
    :sswitch_2
    sub-int v4, v10, v13

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    iget v15, v3, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v4, v15

    iget v15, v3, Landroid/support/v7/widget/cu;->rightMargin:I

    sub-int/2addr v4, v15

    .line 16476
    goto :goto_3

    .line 16479
    :sswitch_3
    sub-int v4, v9, v13

    iget v15, v3, Landroid/support/v7/widget/cu;->rightMargin:I

    sub-int/2addr v4, v15

    .line 16480
    goto :goto_3

    .line 17515
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;)Z

    move-result v5

    .line 17516
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v8

    .line 17522
    sub-int v3, p5, p3

    .line 17523
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v4

    sub-int v12, v3, v4

    .line 17526
    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v4

    sub-int v13, v3, v4

    .line 17528
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getVirtualChildCount()I

    move-result v14

    .line 17530
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->e:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 17531
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->e:I

    and-int/lit8 v11, v4, 0x70

    .line 17533
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/v7/widget/ct;->a:Z

    .line 17535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ct;->i:[I

    move-object/from16 v16, v0

    .line 17536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ct;->j:[I

    move-object/from16 v17, v0

    .line 17538
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 17539
    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 17552
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v9

    .line 17556
    :goto_4
    const/4 v4, 0x0

    .line 17557
    const/4 v3, 0x1

    .line 17559
    if-eqz v5, :cond_b

    .line 17560
    add-int/lit8 v4, v14, -0x1

    .line 17561
    const/4 v3, -0x1

    move v5, v4

    move v4, v3

    .line 17564
    :goto_5
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v14, :cond_7

    .line 17565
    mul-int v3, v4, v10

    add-int v18, v5, v3

    .line 18499
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 17568
    if-nez v19, :cond_4

    .line 17569
    add-int/lit8 v9, v9, 0x0

    move v3, v10

    .line 17564
    :goto_7
    add-int/lit8 v10, v3, 0x1

    goto :goto_6

    .line 17542
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p4

    sub-int v3, v3, p2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->f:I

    sub-int v9, v3, v4

    .line 17543
    goto :goto_4

    .line 17547
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v3

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ct;->f:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int v9, v3, v4

    .line 17548
    goto :goto_4

    .line 17570
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_a

    .line 17571
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 17572
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 17573
    const/4 v6, -0x1

    .line 17576
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/cu;

    .line 17578
    if-eqz v15, :cond_5

    iget v7, v3, Landroid/support/v7/widget/cu;->height:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_5

    .line 17579
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 17582
    :cond_5
    iget v7, v3, Landroid/support/v7/widget/cu;->h:I

    .line 17583
    if-gez v7, :cond_6

    move v7, v11

    .line 17587
    :cond_6
    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_3

    move v6, v8

    .line 17623
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 17624
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ct;->l:I

    add-int/2addr v7, v9

    .line 17627
    :goto_9
    iget v9, v3, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v7, v9

    .line 17628
    add-int/lit8 v9, v7, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v9, v6, v1, v2}, Landroid/support/v7/widget/ct;->b(Landroid/view/View;IIII)V

    .line 17630
    iget v3, v3, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int v3, v3, v20

    .line 17631
    add-int/lit8 v3, v3, 0x0

    add-int v9, v7, v3

    .line 17633
    add-int/lit8 v3, v10, 0x0

    goto :goto_7

    .line 17589
    :sswitch_6
    iget v7, v3, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v7, v8

    .line 17590
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_9

    .line 17591
    const/16 v22, 0x1

    aget v22, v16, v22

    sub-int v6, v22, v6

    add-int/2addr v6, v7

    goto :goto_8

    .line 17607
    :sswitch_7
    sub-int v6, v13, v21

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    iget v7, v3, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/support/v7/widget/cu;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 17609
    goto :goto_8

    .line 17612
    :sswitch_8
    sub-int v7, v12, v21

    iget v0, v3, Landroid/support/v7/widget/cu;->bottomMargin:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    .line 17613
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_9

    .line 17614
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v6, v22, v6

    .line 17615
    const/16 v22, 0x2

    aget v22, v17, v22

    sub-int v6, v22, v6

    sub-int v6, v7, v6

    .line 17616
    goto :goto_8

    .line 1405
    :cond_7
    return-void

    :cond_8
    move v7, v9

    goto :goto_9

    :cond_9
    move v6, v7

    goto :goto_8

    :cond_a
    move v3, v10

    goto/16 :goto_7

    :cond_b
    move v5, v4

    move v4, v3

    goto/16 :goto_5

    :cond_c
    move v3, v7

    goto/16 :goto_2

    .line 16437
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 16472
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 17539
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
    .end sparse-switch

    .line 17587
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x30 -> :sswitch_6
        0x50 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 27

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 5588
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5589
    const/16 v18, 0x0

    .line 5590
    const/16 v17, 0x0

    .line 5591
    const/16 v16, 0x0

    .line 5592
    const/4 v15, 0x0

    .line 5593
    const/4 v14, 0x1

    .line 5594
    const/4 v5, 0x0

    .line 5596
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getVirtualChildCount()I

    move-result v21

    .line 5598
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 5599
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 5601
    const/4 v10, 0x0

    .line 5602
    const/4 v12, 0x0

    .line 5604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ct;->b:I

    move/from16 v24, v0

    .line 5605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ct;->h:Z

    move/from16 v25, v0

    .line 5607
    const/high16 v11, -0x80000000

    .line 5610
    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 6499
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5613
    if-nez v4, :cond_0

    .line 5614
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    move/from16 v3, v19

    .line 5610
    :goto_1
    add-int/lit8 v19, v3, 0x1

    goto :goto_0

    .line 5618
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_26

    .line 5623
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5624
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ct;->m:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5627
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/support/v7/widget/cu;

    .line 5629
    iget v3, v9, Landroid/support/v7/widget/cu;->g:F

    add-float v13, v5, v3

    .line 5631
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    iget v3, v9, Landroid/support/v7/widget/cu;->height:I

    if-nez v3, :cond_3

    iget v3, v9, Landroid/support/v7/widget/cu;->g:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 5635
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5636
    iget v5, v9, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v5, v3

    iget v6, v9, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5637
    const/4 v12, 0x1

    move v8, v11

    move v11, v12

    .line 5676
    :goto_2
    if-ltz v24, :cond_2

    add-int/lit8 v3, v19, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_2

    .line 5677
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->c:I

    .line 5683
    :cond_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    iget v3, v9, Landroid/support/v7/widget/cu;->g:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 5684
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5639
    :cond_3
    const/high16 v3, -0x80000000

    .line 5641
    iget v5, v9, Landroid/support/v7/widget/cu;->height:I

    if-nez v5, :cond_4

    iget v5, v9, Landroid/support/v7/widget/cu;->g:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 5646
    const/4 v3, 0x0

    .line 5647
    const/4 v5, -0x2

    iput v5, v9, Landroid/support/v7/widget/cu;->height:I

    :cond_4
    move/from16 v20, v3

    .line 5654
    const/4 v6, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/ct;->f:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/ct;->a(Landroid/view/View;IIII)V

    .line 5658
    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_5

    .line 5659
    move/from16 v0, v20

    iput v0, v9, Landroid/support/v7/widget/cu;->height:I

    .line 5662
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 5663
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5664
    add-int v6, v5, v3

    iget v7, v9, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v9, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v6, v7

    .line 5665
    add-int/lit8 v6, v6, 0x0

    .line 5664
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5667
    if-eqz v25, :cond_25

    .line 5668
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v8, v11

    move v11, v12

    goto :goto_2

    .line 5654
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 5690
    :cond_7
    const/4 v3, 0x0

    .line 5691
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_24

    iget v5, v9, Landroid/support/v7/widget/cu;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    .line 5696
    const/4 v5, 0x1

    .line 5697
    const/4 v3, 0x1

    .line 5700
    :goto_4
    iget v6, v9, Landroid/support/v7/widget/cu;->leftMargin:I

    iget v7, v9, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v6, v7

    .line 5701
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 5702
    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 5704
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    .line 5703
    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/support/v7/widget/gq;->a(II)I

    move-result v10

    .line 5706
    if-eqz v14, :cond_8

    iget v4, v9, Landroid/support/v7/widget/cu;->width:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_8

    const/4 v4, 0x1

    .line 5707
    :goto_5
    iget v9, v9, Landroid/support/v7/widget/cu;->g:F

    const/4 v14, 0x0

    cmpl-float v9, v9, v14

    if-lez v9, :cond_a

    .line 5712
    if-eqz v3, :cond_9

    move v3, v6

    :goto_6
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v13

    move v7, v4

    move/from16 v9, v16

    move v4, v11

    move v11, v12

    move/from16 v26, v8

    move v8, v3

    move/from16 v3, v26

    .line 5719
    :goto_7
    add-int/lit8 v12, v19, 0x0

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move v11, v3

    move v10, v5

    move v3, v12

    move v5, v6

    move v12, v4

    goto/16 :goto_1

    .line 5706
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    move v3, v7

    .line 5712
    goto :goto_6

    .line 5715
    :cond_a
    if-eqz v3, :cond_b

    :goto_8
    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v13

    move v7, v4

    move v9, v3

    move v4, v11

    move v3, v8

    move v8, v15

    move v11, v12

    goto :goto_7

    :cond_b
    move v6, v7

    goto :goto_8

    .line 5722
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    if-lez v3, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ct;->a(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5723
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->m:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5726
    :cond_d
    if-eqz v25, :cond_11

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_e

    if-nez v23, :cond_11

    .line 5728
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5730
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_11

    .line 7499
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5733
    if-nez v3, :cond_f

    .line 5734
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    move v3, v4

    .line 5730
    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    .line 5738
    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_10

    .line 5739
    add-int/lit8 v3, v4, 0x0

    .line 5740
    goto :goto_a

    .line 5744
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/cu;

    .line 5746
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5747
    add-int v7, v6, v11

    iget v8, v3, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v7, v8

    iget v3, v3, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v3, v7

    .line 5748
    add-int/lit8 v3, v3, 0x0

    .line 5747
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    move v3, v4

    goto :goto_a

    .line 5753
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5755
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5758
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5761
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v19

    .line 5762
    const v3, 0xffffff

    and-int v3, v3, v19

    .line 5767
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ct;->f:I

    sub-int v6, v3, v4

    .line 5768
    if-nez v12, :cond_12

    if-eqz v6, :cond_1d

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1d

    .line 5769
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ct;->g:F

    .line 5771
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5773
    const/4 v3, 0x0

    move v15, v3

    move v12, v14

    move/from16 v13, v16

    move/from16 v11, v17

    move/from16 v14, v18

    :goto_b
    move/from16 v0, v21

    if-ge v15, v0, :cond_1b

    .line 8499
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5776
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_23

    .line 5780
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/cu;

    .line 5782
    iget v8, v3, Landroid/support/v7/widget/cu;->g:F

    .line 5783
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_22

    .line 5785
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 5786
    sub-float v8, v5, v8

    .line 5787
    sub-int v9, v6, v4

    .line 5790
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/cu;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/cu;->width:I

    .line 5789
    move/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/support/v7/widget/ct;->getChildMeasureSpec(III)I

    move-result v5

    .line 5795
    iget v6, v3, Landroid/support/v7/widget/cu;->height:I

    if-nez v6, :cond_14

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_16

    .line 5798
    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 5799
    if-gez v4, :cond_15

    .line 5800
    const/4 v4, 0x0

    :cond_15
    move-object v6, v7

    .line 5808
    :goto_c
    const/high16 v16, 0x40000000    # 2.0f

    .line 5809
    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 5808
    invoke-virtual {v6, v5, v4}, Landroid/view/View;->measure(II)V

    .line 5815
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 5814
    invoke-static {v11, v4}, Landroid/support/v7/widget/gq;->a(II)I

    move-result v4

    move v5, v9

    move v6, v4

    move v4, v8

    .line 5819
    :goto_d
    iget v8, v3, Landroid/support/v7/widget/cu;->leftMargin:I

    iget v9, v3, Landroid/support/v7/widget/cu;->rightMargin:I

    add-int/2addr v8, v9

    .line 5820
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v8

    .line 5821
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 5823
    const/high16 v14, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v14, :cond_18

    iget v14, v3, Landroid/support/v7/widget/cu;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_18

    const/4 v14, 0x1

    .line 5826
    :goto_e
    if-eqz v14, :cond_19

    :goto_f
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5829
    if-eqz v12, :cond_1a

    iget v8, v3, Landroid/support/v7/widget/cu;->width:I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_1a

    const/4 v8, 0x1

    .line 5831
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/ct;->f:I

    .line 5832
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v12

    iget v13, v3, Landroid/support/v7/widget/cu;->topMargin:I

    add-int/2addr v7, v13

    iget v3, v3, Landroid/support/v7/widget/cu;->bottomMargin:I

    add-int/2addr v3, v7

    .line 5833
    add-int/lit8 v3, v3, 0x0

    .line 5832
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    move v3, v9

    move v7, v11

    .line 5773
    :goto_11
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v12, v8

    move v13, v3

    move v11, v6

    move v14, v7

    move v6, v5

    move v5, v4

    goto/16 :goto_b

    .line 5808
    :cond_16
    if-lez v4, :cond_17

    move-object v6, v7

    goto :goto_c

    :cond_17
    const/4 v4, 0x0

    move-object v6, v7

    goto :goto_c

    .line 5823
    :cond_18
    const/4 v14, 0x0

    goto :goto_e

    :cond_19
    move v8, v9

    .line 5826
    goto :goto_f

    .line 5829
    :cond_1a
    const/4 v8, 0x0

    goto :goto_10

    .line 5837
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ct;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/ct;->f:I

    move v3, v13

    move/from16 v17, v11

    move v4, v14

    move v14, v12

    .line 5869
    :goto_12
    if-nez v14, :cond_20

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_20

    .line 5873
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 5876
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ct;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5878
    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/ct;->setMeasuredDimension(II)V

    .line 5881
    if-eqz v10, :cond_1c

    .line 5882
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ct;->a(II)V

    .line 549
    :cond_1c
    :goto_14
    return-void

    .line 5840
    :cond_1d
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 5846
    if-eqz v25, :cond_21

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_21

    .line 5847
    const/4 v3, 0x0

    move v4, v3

    :goto_15
    move/from16 v0, v21

    if-ge v4, v0, :cond_21

    .line 9499
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5850
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1e

    .line 5855
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/cu;

    .line 5857
    iget v3, v3, Landroid/support/v7/widget/cu;->g:F

    .line 5858
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e

    .line 5860
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 5862
    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 5859
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    .line 5847
    :cond_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    .line 547
    :cond_1f
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/ct;->b(II)V

    goto :goto_14

    :cond_20
    move v3, v4

    goto :goto_13

    :cond_21
    move v3, v13

    move/from16 v4, v18

    goto/16 :goto_12

    :cond_22
    move v4, v5

    move v5, v6

    move v6, v11

    goto/16 :goto_d

    :cond_23
    move v4, v5

    move v8, v12

    move v3, v13

    move v7, v14

    move v5, v6

    move v6, v11

    goto/16 :goto_11

    :cond_24
    move v5, v10

    goto/16 :goto_4

    :cond_25
    move v8, v11

    move v11, v12

    goto/16 :goto_2

    :cond_26
    move v3, v11

    move v4, v12

    move v6, v5

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move v5, v10

    move/from16 v11, v18

    move/from16 v10, v17

    goto/16 :goto_7
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Landroid/support/v7/widget/ct;->a:Z

    .line 387
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    .prologue
    .line 482
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "base aligned child index out of range (0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/ct;->b:I

    .line 487
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ct;->k:Landroid/graphics/drawable/Drawable;

    .line 231
    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ct;->l:I

    .line 233
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ct;->m:I

    .line 238
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ct;->setWillNotDraw(Z)V

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->requestLayout()V

    goto :goto_0

    .line 235
    :cond_2
    iput v0, p0, Landroid/support/v7/widget/ct;->l:I

    .line 236
    iput v0, p0, Landroid/support/v7/widget/ct;->m:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Landroid/support/v7/widget/ct;->o:I

    .line 253
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    .line 1673
    iget v0, p0, Landroid/support/v7/widget/ct;->e:I

    if-eq v0, p1, :cond_1

    .line 1674
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1675
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 1678
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 1679
    or-int/lit8 v0, v0, 0x30

    .line 1682
    :cond_0
    iput v0, p0, Landroid/support/v7/widget/ct;->e:I

    .line 1683
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->requestLayout()V

    .line 1685
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    .prologue
    const v2, 0x800007

    .line 1688
    and-int v0, p1, v2

    .line 1689
    iget v1, p0, Landroid/support/v7/widget/ct;->e:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1690
    iget v1, p0, Landroid/support/v7/widget/ct;->e:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ct;->e:I

    .line 1691
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->requestLayout()V

    .line 1693
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .prologue
    .line 412
    iput-boolean p1, p0, Landroid/support/v7/widget/ct;->h:Z

    .line 413
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 1648
    iget v0, p0, Landroid/support/v7/widget/ct;->d:I

    if-eq v0, p1, :cond_0

    .line 1649
    iput p1, p0, Landroid/support/v7/widget/ct;->d:I

    .line 1650
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->requestLayout()V

    .line 1652
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/support/v7/widget/ct;->n:I

    if-eq p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->requestLayout()V

    .line 193
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/ct;->n:I

    .line 194
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .prologue
    .line 1696
    and-int/lit8 v0, p1, 0x70

    .line 1697
    iget v1, p0, Landroid/support/v7/widget/ct;->e:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1698
    iget v1, p0, Landroid/support/v7/widget/ct;->e:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ct;->e:I

    .line 1699
    invoke-virtual {p0}, Landroid/support/v7/widget/ct;->requestLayout()V

    .line 1701
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ct;->g:F

    .line 540
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
