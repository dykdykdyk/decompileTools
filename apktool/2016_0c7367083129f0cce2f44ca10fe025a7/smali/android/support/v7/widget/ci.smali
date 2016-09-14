.class public final Landroid/support/v7/widget/ci;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final a:Landroid/graphics/Rect;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ci;->a:Landroid/graphics/Rect;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 50
    :try_start_0
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ci;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 180
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 181
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 182
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 183
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 184
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 185
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string v0, "ADD"

    .line 186
    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_2

    .line 1169
    :cond_0
    sget-object v1, Landroid/support/v7/widget/fw;->e:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1175
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 117
    :cond_1
    return-void

    .line 1172
    :cond_2
    sget-object v1, Landroid/support/v7/widget/fw;->h:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x0

    .line 124
    move-object v0, p0

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_0

    move v0, v1

    .line 158
    :goto_1
    return v0

    .line 126
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    move v0, v1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_2

    move v0, v1

    .line 131
    goto :goto_1

    .line 134
    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 137
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_7

    .line 138
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 141
    invoke-static {v4}, Landroid/support/v7/widget/ci;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    .line 142
    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_4
    instance-of v2, v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_5

    .line 147
    check-cast v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    .line 149
    invoke-interface {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_5
    instance-of v2, v0, Landroid/support/v7/c/a/a;

    if-eqz v2, :cond_6

    .line 151
    check-cast v0, Landroid/support/v7/c/a/a;

    .line 1211
    iget-object v0, v0, Landroid/support/v7/c/a/a;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 154
    :cond_6
    instance-of v2, v0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v2, :cond_7

    .line 155
    check-cast v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method
