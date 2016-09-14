.class public final Lcom/nut/blehunter/ui/b/x;
.super Lcom/nut/blehunter/ui/b/h;
.source "NotDisturbSilenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/nut/blehunter/entity/User;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/x;->e:Z

    return-void
.end method

.method private a(Lcom/nut/blehunter/entity/Silence;)V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/nut/blehunter/ui/b/x;->a(Lcom/nut/blehunter/entity/Silence;Landroid/view/View;)V

    .line 96
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/x;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 99
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/x;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method private a(Lcom/nut/blehunter/entity/Silence;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 103
    const v0, 0x7f0d00b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0d014c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    const v2, 0x7f0d014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    iget-object v3, p1, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget v0, p1, Lcom/nut/blehunter/entity/Silence;->b:I

    iget v3, p1, Lcom/nut/blehunter/entity/Silence;->c:I

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/e;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p1, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, ""

    .line 116
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lcom/nut/blehunter/ui/b/z;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/b/z;-><init>(Lcom/nut/blehunter/ui/b/x;Lcom/nut/blehunter/entity/Silence;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void

    .line 112
    :cond_0
    iget-object v0, p1, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/RepeatTime;

    .line 113
    iget v1, v0, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    const/16 v3, 0x7f

    if-ne v1, v3, :cond_1

    const v0, 0x7f0601a7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b/x;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/x;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c00f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    invoke-static {v1, v0}, Lcom/nut/blehunter/d/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/x;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/b/x;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/b/x;)Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    return-object v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 155
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/b/x;->e:Z

    .line 156
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    .line 159
    :cond_1
    const-string v0, "silence"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    .line 160
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v1, v1, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iput v2, v1, Lcom/nut/blehunter/entity/aa;->a:I

    .line 162
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/x;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/x;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0601c2

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/b/x;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 166
    :cond_2
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/x;->a(Lcom/nut/blehunter/entity/Silence;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/b/x;->e:Z

    .line 172
    const-string v0, "index"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 173
    const-string v0, "silence"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    .line 174
    if-eq v1, v3, :cond_0

    .line 177
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v2, v2, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v2, v2, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/x;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 183
    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/b/x;->a(Lcom/nut/blehunter/entity/Silence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 144
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b/x;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "PERIOD_ADDED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0153
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    const v0, 0x7f030071

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 53
    const v0, 0x7f0d0151

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/x;->a:Landroid/widget/CheckBox;

    .line 54
    const v0, 0x7f0d0153

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/x;->b:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0d0152

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/x;->c:Landroid/widget/LinearLayout;

    .line 1063
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    .line 1064
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    if-eqz v0, :cond_2

    .line 1067
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    new-instance v4, Lcom/nut/blehunter/entity/aa;

    invoke-direct {v4}, Lcom/nut/blehunter/entity/aa;-><init>()V

    iput-object v4, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    iget-object v4, p0, Lcom/nut/blehunter/ui/b/x;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget v0, v0, Lcom/nut/blehunter/entity/aa;->a:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1074
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/nut/blehunter/ui/b/y;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/y;-><init>(Lcom/nut/blehunter/ui/b/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1085
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1087
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/b/x;->a(Lcom/nut/blehunter/entity/Silence;)V

    .line 1087
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1073
    goto :goto_0

    .line 58
    :cond_2
    return-object v3
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/b/x;->e:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/nut/blehunter/entity/aa;->a:I

    .line 134
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->o:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/x;->d:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onPause()V

    .line 138
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
