.class public final Lcom/nut/blehunter/ui/a/q;
.super Landroid/support/v7/widget/dx;
.source "NutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/a/s;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Landroid/view/LayoutInflater;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method private a(Lcom/nut/blehunter/entity/Nut;)V
    .locals 7

    .prologue
    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Lcom/nut/blehunter/b/b;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    iget-object v4, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v4, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    new-instance v6, Lcom/nut/blehunter/ui/a/r;

    invoke-direct {v6, p0, p1}, Lcom/nut/blehunter/ui/a/r;-><init>(Lcom/nut/blehunter/ui/a/q;Lcom/nut/blehunter/entity/Nut;)V

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/b/b;-><init>(Landroid/content/Context;DDLcom/nut/blehunter/b/e;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 4

    .prologue
    .line 35
    .line 3047
    new-instance v0, Lcom/nut/blehunter/ui/a/s;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/a/s;-><init>(Lcom/nut/blehunter/ui/a/q;Landroid/view/View;)V

    .line 35
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 35
    check-cast p1, Lcom/nut/blehunter/ui/a/s;

    .line 1052
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 1054
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/s;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget v4, v0, Lcom/nut/blehunter/entity/Nut;->L:I

    int-to-float v4, v4

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setHighlightBorderSweepAngle(F)V

    .line 1055
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/s;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    invoke-static {v1, v0}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 1057
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/s;->n:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v1, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/s;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v6, v6, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    invoke-static {v4, v6, v7}, Lcom/nut/blehunter/d/e;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :cond_0
    iget-object v4, p1, Lcom/nut/blehunter/ui/a/s;->o:Landroid/widget/TextView;

    .line 1083
    if-nez v0, :cond_3

    .line 1084
    const-string v1, ""

    .line 1061
    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    if-eqz v0, :cond_2

    if-nez p1, :cond_9

    .line 1138
    :cond_2
    :goto_1
    return-void

    .line 1086
    :cond_3
    const-string v1, ""

    .line 1088
    iget-object v6, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 1089
    iget v7, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1091
    :pswitch_1
    iget-object v7, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v7}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/nut/blehunter/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nut/blehunter/b/a;

    move-result-object v7

    .line 1092
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    iget-wide v8, v7, Lcom/nut/blehunter/b/a;->a:J

    iget-wide v10, v6, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    cmp-long v6, v8, v10

    if-nez v6, :cond_4

    .line 1093
    invoke-virtual {v7}, Lcom/nut/blehunter/b/a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1095
    :cond_4
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/a/q;->a(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_0

    .line 1099
    :pswitch_2
    iget v7, v0, Lcom/nut/blehunter/entity/Nut;->L:I

    const/4 v8, 0x3

    if-le v7, v8, :cond_7

    .line 1100
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v7, 0x7f06012e

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1104
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v7}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/nut/blehunter/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nut/blehunter/b/a;

    move-result-object v7

    .line 1105
    if-eqz v7, :cond_6

    if-eqz v6, :cond_1

    iget-wide v8, v7, Lcom/nut/blehunter/b/a;->a:J

    iget-wide v6, v6, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    cmp-long v6, v8, v6

    if-eqz v6, :cond_1

    .line 1106
    :cond_6
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/a/q;->a(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_0

    .line 1101
    :cond_7
    iget v7, v0, Lcom/nut/blehunter/entity/Nut;->L:I

    if-lez v7, :cond_5

    .line 1102
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v7, 0x7f06012c

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1110
    :pswitch_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f06012d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1113
    :pswitch_4
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v1

    iget-object v6, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/nut/blehunter/provider/k;->b(Ljava/lang/String;)Lcom/nut/blehunter/entity/FindLocation;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_8

    iget-object v6, v1, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v1, v1, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, ""

    goto/16 :goto_0

    .line 1141
    :cond_9
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/m;->a(Lcom/nut/blehunter/entity/Nut;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    .line 1142
    :goto_3
    iget-object v4, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    .line 2066
    const-string v7, "item_new_found_count"

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2067
    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1143
    iget v4, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v4, v12, :cond_d

    if-lez v6, :cond_d

    .line 1145
    :goto_4
    iget-object v4, p1, Lcom/nut/blehunter/ui/a/s;->p:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1146
    iget-object v7, p1, Lcom/nut/blehunter/ui/a/s;->q:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    move v4, v3

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1147
    iget-object v7, p1, Lcom/nut/blehunter/ui/a/s;->r:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    move v4, v3

    :goto_6
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1149
    iget v4, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v4, v12, :cond_10

    .line 1150
    if-eqz v2, :cond_a

    .line 1151
    iget-object v2, p1, Lcom/nut/blehunter/ui/a/s;->s:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    :cond_a
    :goto_7
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v2

    iget v4, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v2, v4}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v2

    .line 1158
    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_11

    if-eqz v2, :cond_11

    iget-object v0, v2, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/nut/blehunter/entity/t;->d:Lcom/nut/blehunter/entity/j;

    iget v0, v0, Lcom/nut/blehunter/entity/j;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    .line 1160
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/s;->q:Landroid/widget/ImageView;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1161
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/s;->q:Landroid/widget/ImageView;

    .line 1164
    :cond_b
    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    move v1, v3

    .line 1141
    goto :goto_3

    :cond_d
    move v2, v3

    .line 1143
    goto :goto_4

    :cond_e
    move v4, v5

    .line 1146
    goto :goto_5

    :cond_f
    move v4, v5

    .line 1147
    goto :goto_6

    .line 1155
    :cond_10
    iget-object v2, p0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    .line 1163
    :cond_11
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/s;->q:Landroid/widget/ImageView;

    const v2, 0x7f02020c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1164
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/s;->q:Landroid/widget/ImageView;

    if-nez v1, :cond_b

    move v3, v5

    goto :goto_8

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
