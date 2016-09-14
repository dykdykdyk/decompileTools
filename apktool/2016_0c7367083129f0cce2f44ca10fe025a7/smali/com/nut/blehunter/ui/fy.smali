.class final Lcom/nut/blehunter/ui/fy;
.super Landroid/support/v7/widget/dx;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/fz;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/x;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/nut/blehunter/ui/ScanDeviceActivity;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 1

    .prologue
    .line 888
    iput-object p1, p0, Lcom/nut/blehunter/ui/fy;->d:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    .line 889
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/fy;->e:Landroid/view/LayoutInflater;

    .line 890
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 4

    .prologue
    .line 882
    .line 3894
    new-instance v0, Lcom/nut/blehunter/ui/fz;

    iget-object v1, p0, Lcom/nut/blehunter/ui/fy;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030096

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/fz;-><init>(Lcom/nut/blehunter/ui/fy;Landroid/view/View;)V

    .line 882
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 8

    .prologue
    const v2, 0x7f020265

    .line 882
    check-cast p1, Lcom/nut/blehunter/ui/fz;

    .line 1900
    iget-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/x;

    .line 1901
    iget v1, v0, Lcom/nut/blehunter/entity/x;->c:I

    invoke-static {v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 1903
    iget-object v3, p1, Lcom/nut/blehunter/ui/fz;->l:Landroid/widget/ImageView;

    const v4, 0x7f0201e7

    const/16 v5, 0x50

    invoke-static {v3, v1, v4, v5}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 1905
    iget-object v3, p1, Lcom/nut/blehunter/ui/fz;->m:Landroid/widget/TextView;

    iget v1, v0, Lcom/nut/blehunter/entity/x;->c:I

    invoke-static {v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 2032
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2033
    const-string v1, "unknown"

    .line 2035
    :cond_0
    add-int/lit8 v4, p2, 0x1

    .line 2036
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1905
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1906
    iget-object v1, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/entity/x;

    iget-boolean v1, v1, Lcom/nut/blehunter/entity/x;->a:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a001a

    .line 1907
    :goto_0
    iget-object v3, p1, Lcom/nut/blehunter/ui/fz;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nut/blehunter/ui/fy;->d:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-virtual {v4}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1909
    iget-object v1, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/entity/x;

    iget v1, v1, Lcom/nut/blehunter/entity/x;->b:I

    int-to-double v4, v1

    .line 3037
    invoke-static {v4, v5}, Lcom/nut/blehunter/d/m;->b(D)D

    move-result-wide v4

    .line 3038
    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_3

    .line 3039
    const/4 v1, 0x0

    .line 1911
    :goto_1
    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 1934
    :goto_2
    iget-object v2, p1, Lcom/nut/blehunter/ui/fz;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1936
    iget-boolean v0, v0, Lcom/nut/blehunter/entity/x;->a:Z

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p1, Lcom/nut/blehunter/ui/fz;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1938
    iget-object v1, p1, Lcom/nut/blehunter/ui/fz;->l:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 882
    :cond_1
    return-void

    .line 1906
    :cond_2
    const v1, 0x7f0a0014

    goto :goto_0

    .line 3040
    :cond_3
    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_4

    .line 3041
    const/4 v1, 0x5

    goto :goto_1

    .line 3042
    :cond_4
    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_5

    .line 3043
    const/4 v1, 0x4

    goto :goto_1

    .line 3044
    :cond_5
    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_6

    .line 3045
    const/4 v1, 0x3

    goto :goto_1

    .line 3046
    :cond_6
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_7

    .line 3047
    const/4 v1, 0x2

    goto :goto_1

    .line 3051
    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 1913
    :pswitch_0
    const v1, 0x7f02026a

    .line 1914
    goto :goto_2

    .line 1916
    :pswitch_1
    const v1, 0x7f020269

    .line 1917
    goto :goto_2

    .line 1919
    :pswitch_2
    const v1, 0x7f020268

    .line 1920
    goto :goto_2

    .line 1922
    :pswitch_3
    const v1, 0x7f020267

    .line 1923
    goto :goto_2

    .line 1925
    :pswitch_4
    const v1, 0x7f020266

    .line 1926
    goto :goto_2

    :pswitch_5
    move v1, v2

    .line 1929
    goto :goto_2

    .line 1911
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(I)J
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/x;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/x;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method final c()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 982
    iget-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 983
    :goto_0
    if-ge v1, v3, :cond_1

    .line 984
    iget-object v0, p0, Lcom/nut/blehunter/ui/fy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/x;

    .line 985
    iget-wide v6, v0, Lcom/nut/blehunter/entity/x;->d:J

    sub-long v6, v4, v6

    .line 986
    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget v6, v0, Lcom/nut/blehunter/entity/x;->b:I

    if-eqz v6, :cond_0

    .line 987
    iput v2, v0, Lcom/nut/blehunter/entity/x;->b:I

    .line 988
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/fy;->c(I)V

    .line 983
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 991
    :cond_1
    return-void
.end method
