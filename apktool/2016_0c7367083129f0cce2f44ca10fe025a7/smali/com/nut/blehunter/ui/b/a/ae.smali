.class public final Lcom/nut/blehunter/ui/b/a/ae;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# static fields
.field private static final h:Lcom/nut/blehunter/ui/b/a/af;


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field private i:Landroid/widget/NumberPicker;

.field private j:Landroid/widget/NumberPicker;

.field private k:Landroid/widget/NumberPicker;

.field private l:Landroid/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/nut/blehunter/ui/b/a/af;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/af;-><init>()V

    sput-object v0, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    .line 182
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/ae;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 40
    new-instance v0, Lcom/nut/blehunter/ui/b/a/ae;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/ae;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "start"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "end"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/ae;->setArguments(Landroid/os/Bundle;)V

    .line 45
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f0601b0

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f060085

    invoke-virtual {v2, v3, p3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const v3, 0x7f060083

    invoke-virtual {v2, v3, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030068

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 54
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/ae;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 10

    .prologue
    const/16 v9, 0x3b

    const/16 v8, 0x17

    const/4 v5, 0x1

    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->f:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->g:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/e;->a(Ljava/lang/String;)[I

    move-result-object v0

    move-object v1, v0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/e;->a(Ljava/lang/String;)[I

    move-result-object v0

    move-object v2, v0

    .line 78
    :goto_1
    const v0, 0x7f0d0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    .line 79
    const v0, 0x7f0d0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    .line 80
    const v0, 0x7f0d0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    .line 81
    const v0, 0x7f0d0196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    .line 83
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 84
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    sget-object v3, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 86
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 87
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 90
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 91
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    sget-object v3, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 92
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 93
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 96
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 97
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    sget-object v3, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 98
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 99
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 102
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 103
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    sget-object v3, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 104
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    aget v3, v1, v4

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 108
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 110
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    aget v1, v2, v4

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 111
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    aget v1, v2, v5

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 113
    return-void

    .line 69
    :cond_0
    const-string v0, "22:00"

    invoke-static {v0}, Lcom/nut/blehunter/d/e;->a(Ljava/lang/String;)[I

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 75
    :cond_1
    const-string v0, "07:00"

    invoke-static {v0}, Lcom/nut/blehunter/d/e;->a(Ljava/lang/String;)[I

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->dismissAllowingStateLoss()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->i:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/ae;->j:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a/ae;->k:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    .line 154
    iget-object v3, p0, Lcom/nut/blehunter/ui/b/a/ae;->l:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    .line 155
    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0601c7

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 159
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v5, v0}, Lcom/nut/blehunter/ui/b/a/af;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v4, v1}, Lcom/nut/blehunter/ui/b/a/af;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->f:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/af;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nut/blehunter/ui/b/a/ae;->h:Lcom/nut/blehunter/ui/b/a/af;

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/af;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->g:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->dismissAllowingStateLoss()V

    .line 165
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ae;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/d;->a(Landroid/support/v4/app/DialogFragment;I)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d017a
        :pswitch_0
    .end packed-switch
.end method

.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3

    .prologue
    .line 117
    .line 1129
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1131
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1132
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 1133
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1134
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    :cond_0
    return-void
.end method
