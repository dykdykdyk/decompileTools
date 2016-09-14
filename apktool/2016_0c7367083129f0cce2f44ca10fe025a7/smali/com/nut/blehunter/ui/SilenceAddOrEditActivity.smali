.class public Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SilenceAddOrEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field private a:Z

.field private b:Lcom/nut/blehunter/entity/Silence;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->c:I

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    if-nez v0, :cond_0

    .line 97
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    const v0, 0x7f0601a7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const v1, 0x7f0601c1

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 183
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v1, v1, Lcom/nut/blehunter/entity/Silence;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v1, v1, Lcom/nut/blehunter/entity/Silence;->c:I

    if-nez v1, :cond_1

    .line 176
    const v1, 0x7f0601c6

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 179
    :cond_1
    iget v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    if-nez v1, :cond_2

    .line 180
    const v1, 0x7f0601c4

    invoke-static {p0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_1
    return-void

    .line 130
    :sswitch_0
    const-string v4, "input_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "set_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    check-cast p1, Lcom/nut/blehunter/ui/b/a/j;

    .line 1102
    iget-object v1, p1, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    .line 132
    iput-object v1, v0, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    .line 133
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/nut/blehunter/ui/b/a/ae;

    .line 1140
    iget-object v3, v0, Lcom/nut/blehunter/ui/b/a/ae;->f:Ljava/lang/String;

    .line 138
    check-cast p1, Lcom/nut/blehunter/ui/b/a/ae;

    .line 1144
    iget-object v4, p1, Lcom/nut/blehunter/ui/b/a/ae;->g:Ljava/lang/String;

    .line 139
    invoke-static {v3, v4}, Lcom/nut/blehunter/d/e;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 140
    iget-object v5, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    aget v1, v0, v1

    iput v1, v5, Lcom/nut/blehunter/entity/Silence;->b:I

    .line 141
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    aget v0, v0, v2

    iput v0, v1, Lcom/nut/blehunter/entity/Silence;->c:I

    .line 142
    const v0, 0x7f0d014c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x52a429e0 -> :sswitch_0
        0x545fbc8a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 189
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 190
    const-string v0, "repeat_time"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    .line 191
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    :cond_0
    iget v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Lcom/nut/blehunter/entity/RepeatTime;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/RepeatTime;-><init>()V

    .line 196
    iget v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    iput v1, v0, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    .line 197
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 200
    :cond_1
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    const-string v1, "silence"

    iget-object v2, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    const-string v1, "index"

    iget v2, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->finish()V

    .line 218
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p0, v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;I)Lcom/nut/blehunter/ui/b/a/j;

    move-result-object v0

    const-string v1, "input_name"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/j;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v0, v0, Lcom/nut/blehunter/entity/Silence;->b:I

    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v1, v1, Lcom/nut/blehunter/entity/Silence;->c:I

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/e;->a(II)[Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 117
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v0, v0, v3

    invoke-static {p0, v1, v0, p0}, Lcom/nut/blehunter/ui/b/a/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/ae;

    move-result-object v0

    const-string v1, "set_time"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/ae;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/SilenceRepeatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v1, "repeat_time"

    iget v2, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0, v3}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d014a
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a:Z

    .line 49
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->c:I

    .line 51
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a:Z

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "silence"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    .line 53
    const v0, 0x7f0601bf

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a(I)V

    .line 54
    const v0, 0x7f0d014f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    new-instance v1, Lcom/nut/blehunter/ui/go;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/go;-><init>(Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :goto_0
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0d014b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1082
    const v1, 0x7f0d014c

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1083
    const v2, 0x7f0d014e

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1084
    iget-object v4, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1085
    iget-object v4, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v0, v0, Lcom/nut/blehunter/entity/Silence;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v0, v0, Lcom/nut/blehunter/entity/Silence;->c:I

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v0, v0, Lcom/nut/blehunter/entity/Silence;->b:I

    iget-object v4, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget v4, v4, Lcom/nut/blehunter/entity/Silence;->c:I

    invoke-static {v0, v4}, Lcom/nut/blehunter/d/e;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iput v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d:I

    .line 1091
    invoke-direct {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void

    .line 67
    :cond_2
    new-instance v0, Lcom/nut/blehunter/entity/Silence;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/Silence;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    .line 68
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    const v1, 0x7f060173

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/Silence;->a:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/Silence;->e:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    const v1, 0x13560

    iput v1, v0, Lcom/nut/blehunter/entity/Silence;->b:I

    .line 71
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    const v1, 0x1b3f0

    iput v1, v0, Lcom/nut/blehunter/entity/Silence;->c:I

    .line 72
    const v0, 0x7f0601be

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a(I)V

    goto/16 :goto_0

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/RepeatTime;

    iget v0, v0, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->a:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0248

    if-ne v0, v1, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-string v1, "silence"

    iget-object v2, p0, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->b:Lcom/nut/blehunter/entity/Silence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;->finish()V

    .line 163
    const-string v0, "silent_periods_add"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
