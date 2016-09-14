.class public Lcom/nut/blehunter/ui/SilencesActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SilencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/nut/blehunter/entity/User;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->c:Z

    return-void
.end method

.method private a(Lcom/nut/blehunter/entity/Silence;)V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilencesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->a(Lcom/nut/blehunter/entity/Silence;Landroid/view/View;)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 84
    iget-object v2, p0, Lcom/nut/blehunter/ui/SilencesActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method private a(Lcom/nut/blehunter/entity/Silence;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    const v0, 0x7f0d00b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0d014c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0d014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    iget-object v3, p1, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget v0, p1, Lcom/nut/blehunter/entity/Silence;->b:I

    iget v3, p1, Lcom/nut/blehunter/entity/Silence;->c:I

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/e;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p1, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, ""

    .line 101
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/nut/blehunter/ui/gr;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/gr;-><init>(Lcom/nut/blehunter/ui/SilencesActivity;Lcom/nut/blehunter/entity/Silence;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/RepeatTime;

    .line 98
    iget v1, v0, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    const/16 v3, 0x7f

    if-ne v1, v3, :cond_1

    const v0, 0x7f0601a7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c00f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    invoke-static {v1, v0}, Lcom/nut/blehunter/d/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SilencesActivity;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/SilencesActivity;)Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 140
    iput-boolean v3, p0, Lcom/nut/blehunter/ui/SilencesActivity;->c:Z

    .line 141
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    .line 144
    :cond_1
    const-string v0, "silence"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    .line 145
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v1, v1, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iput v3, v1, Lcom/nut/blehunter/entity/aa;->a:I

    .line 147
    const v1, 0x7f0d0151

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/SilencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 148
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    const/4 v1, 0x0

    const v2, 0x7f0601c2

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/SilencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 152
    :cond_2
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->a(Lcom/nut/blehunter/entity/Silence;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iput-boolean v3, p0, Lcom/nut/blehunter/ui/SilencesActivity;->c:Z

    .line 158
    const-string v0, "index"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 159
    const-string v0, "silence"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    .line 160
    if-eq v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v2, v2, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    if-nez v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v2, v2, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lcom/nut/blehunter/ui/SilencesActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/SilencesActivity;->a(Lcom/nut/blehunter/entity/Silence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 129
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/SilencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "PERIOD_ADDED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0153
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f060173

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->a(I)V

    .line 44
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    .line 45
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    if-nez v0, :cond_1

    .line 54
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    new-instance v3, Lcom/nut/blehunter/entity/aa;

    invoke-direct {v3}, Lcom/nut/blehunter/entity/aa;-><init>()V

    iput-object v3, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    .line 51
    :cond_2
    const v0, 0x7f0d0153

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0d0152

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->a:Landroid/widget/LinearLayout;

    .line 1057
    const v0, 0x7f0d0151

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1058
    new-instance v3, Lcom/nut/blehunter/ui/gq;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/gq;-><init>(Lcom/nut/blehunter/ui/SilencesActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1069
    iget-object v3, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v3, v3, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget v3, v3, Lcom/nut/blehunter/entity/aa;->a:I

    if-ne v3, v1, :cond_3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1070
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1072
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->a(Lcom/nut/blehunter/entity/Silence;)V

    .line 1072
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1069
    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->c:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    const v0, 0x7f0d0151

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/nut/blehunter/entity/aa;->a:I

    .line 119
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->o:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/SilencesActivity;->b:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 122
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 123
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
