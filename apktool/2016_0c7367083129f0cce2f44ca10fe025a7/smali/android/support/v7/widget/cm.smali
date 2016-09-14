.class public abstract Landroid/support/v7/widget/cm;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:F

.field private final b:I

.field private final c:I

.field private final d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/cm;->i:[I

    .line 64
    iput-object p1, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/cm;->a:F

    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/cm;->b:I

    .line 68
    iget v0, p0, Landroid/support/v7/widget/cm;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/cm;->c:I

    .line 69
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/cm;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/cm;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 33
    .line 4203
    invoke-direct {p0}, Landroid/support/v7/widget/cm;->d()V

    .line 4205
    iget-object v8, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    .line 4206
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4209
    :cond_0
    :goto_0
    return-void

    .line 4212
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/cm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4217
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4221
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4222
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4223
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4225
    iput-boolean v9, p0, Landroid/support/v7/widget/cm;->g:Z

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/cm;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/cm;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cm;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/cm;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/view/menu/ak;
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v7/widget/cm;->a()Landroid/support/v7/view/menu/ak;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/ak;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v0}, Landroid/support/v7/view/menu/ak;->b()V

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/widget/cm;->a()Landroid/support/v7/view/menu/ak;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0}, Landroid/support/v7/view/menu/ak;->c()V

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    iget-boolean v10, p0, Landroid/support/v7/widget/cm;->g:Z

    .line 87
    if-eqz v10, :cond_a

    .line 1236
    iget-object v1, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    .line 1237
    invoke-virtual {p0}, Landroid/support/v7/widget/cm;->a()Landroid/support/v7/view/menu/ak;

    move-result-object v0

    .line 1238
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/ak;->d()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v0, v7

    .line 88
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/cm;->c()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    move v0, v8

    .line 102
    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/cm;->g:Z

    .line 103
    if-nez v0, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    move v7, v8

    :cond_3
    return v7

    .line 1242
    :cond_4
    invoke-interface {v0}, Landroid/support/v7/view/menu/ak;->e()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cj;

    .line 1243
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/cj;->isShown()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v0, v7

    .line 1244
    goto :goto_0

    .line 1248
    :cond_6
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1286
    iget-object v3, p0, Landroid/support/v7/widget/cm;->i:[I

    .line 1287
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1288
    aget v1, v3, v7

    int-to-float v1, v1

    aget v3, v3, v8

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2275
    iget-object v1, p0, Landroid/support/v7/widget/cm;->i:[I

    .line 2276
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2277
    aget v3, v1, v7

    neg-int v3, v3

    int-to-float v3, v3

    aget v1, v1, v8

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1253
    iget v1, p0, Landroid/support/v7/widget/cm;->h:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/cj;->a(Landroid/view/MotionEvent;I)Z

    move-result v1

    .line 1254
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1257
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1258
    if-eq v0, v8, :cond_7

    if-eq v0, v4, :cond_7

    move v0, v8

    .line 1261
    :goto_2
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    move v0, v8

    goto :goto_0

    :cond_7
    move v0, v7

    .line 1258
    goto :goto_2

    :cond_8
    move v0, v7

    .line 1261
    goto :goto_0

    :cond_9
    move v0, v7

    .line 88
    goto :goto_1

    .line 3147
    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    .line 3148
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3152
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 3153
    packed-switch v0, :pswitch_data_0

    :cond_b
    :goto_3
    move v0, v7

    .line 90
    :goto_4
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/cm;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    move v9, v8

    .line 92
    :goto_5
    if-eqz v9, :cond_c

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    .line 95
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroid/support/v7/widget/cm;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_c
    move v0, v9

    goto/16 :goto_1

    .line 3155
    :pswitch_0
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/cm;->h:I

    .line 3157
    iget-object v0, p0, Landroid/support/v7/widget/cm;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_d

    .line 3158
    new-instance v0, Landroid/support/v7/widget/cn;

    invoke-direct {v0, p0, v7}, Landroid/support/v7/widget/cn;-><init>(Landroid/support/v7/widget/cm;B)V

    iput-object v0, p0, Landroid/support/v7/widget/cm;->e:Ljava/lang/Runnable;

    .line 3160
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/cm;->e:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v7/widget/cm;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3162
    iget-object v0, p0, Landroid/support/v7/widget/cm;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    .line 3163
    new-instance v0, Landroid/support/v7/widget/co;

    invoke-direct {v0, p0, v7}, Landroid/support/v7/widget/co;-><init>(Landroid/support/v7/widget/cm;B)V

    iput-object v0, p0, Landroid/support/v7/widget/cm;->f:Ljava/lang/Runnable;

    .line 3165
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/cm;->f:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v7/widget/cm;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 3168
    :pswitch_1
    iget v0, p0, Landroid/support/v7/widget/cm;->h:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3169
    if-ltz v0, :cond_b

    .line 3170
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 3171
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 3174
    iget v3, p0, Landroid/support/v7/widget/cm;->a:F

    .line 3265
    neg-float v6, v3

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_f

    neg-float v6, v3

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_f

    .line 3266
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v3

    cmpg-float v2, v2, v6

    if-gez v2, :cond_f

    .line 3267
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f

    move v0, v8

    .line 3174
    :goto_6
    if-nez v0, :cond_b

    .line 3175
    invoke-direct {p0}, Landroid/support/v7/widget/cm;->d()V

    .line 3178
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v8

    .line 3179
    goto/16 :goto_4

    :cond_f
    move v0, v7

    .line 3267
    goto :goto_6

    .line 3185
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/cm;->d()V

    goto/16 :goto_3

    :cond_10
    move v9, v7

    .line 90
    goto/16 :goto_5

    .line 3153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
