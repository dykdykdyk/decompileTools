.class public final Lcom/nut/blehunter/ui/a/e;
.super Landroid/support/v7/widget/dx;
.source "ConnectRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 63
    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    .line 1069
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x9

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect record file is bad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 1073
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1074
    new-array v3, v5, [B

    .line 1075
    array-length v4, p1

    add-int/lit8 v4, v4, -0x9

    sub-int/2addr v4, v0

    invoke-static {p1, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1076
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v0, v0, 0x9

    goto :goto_0

    .line 64
    :cond_1
    iput-object v2, p0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 3

    .prologue
    .line 36
    .line 2084
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2087
    new-instance v1, Lcom/nut/blehunter/ui/a/f;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/a/f;-><init>(Landroid/view/View;)V

    .line 36
    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 36
    check-cast p1, Lcom/nut/blehunter/ui/a/f;

    .line 1093
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1095
    const v1, 0x7f0a003e

    .line 1096
    aget-byte v2, v0, v4

    packed-switch v2, :pswitch_data_0

    .line 1116
    const v2, 0x7f060261

    .line 1118
    :goto_0
    iget-object v3, p1, Lcom/nut/blehunter/ui/a/f;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1119
    iget-object v2, p1, Lcom/nut/blehunter/ui/a/f;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1120
    iget-object v2, p1, Lcom/nut/blehunter/ui/a/f;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    new-array v2, v5, [B

    .line 1123
    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1124
    invoke-static {v2}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v2

    .line 1125
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/e;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1126
    iget-object v2, p1, Lcom/nut/blehunter/ui/a/f;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    return-void

    .line 1098
    :pswitch_0
    const v2, 0x7f060260

    .line 1099
    const v1, 0x7f0a0021

    .line 1100
    goto :goto_0

    .line 1102
    :pswitch_1
    const v2, 0x7f06025d

    .line 1103
    const v1, 0x7f0a0015

    .line 1104
    goto :goto_0

    .line 1106
    :pswitch_2
    const v2, 0x7f06025f

    .line 1107
    goto :goto_0

    .line 1109
    :pswitch_3
    const v2, 0x7f06025c

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_4
    const v2, 0x7f06025a

    .line 1113
    const v1, 0x7f0a0022

    .line 1114
    goto :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
