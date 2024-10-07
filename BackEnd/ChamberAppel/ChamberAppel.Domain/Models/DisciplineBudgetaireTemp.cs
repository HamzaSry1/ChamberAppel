namespace ChamberAppel.Domain.Models
{
    public class DisciplineBudgetaireTemp
    {
        public Guid Id { get; set; }
        // رقم الملف
        public string? Numero_Dossier { get; set; }

        // طالب الإستئناف
        public string? Appelant { get; set; }

        // الحكم المستأنف عدد
        public string? Numero_Jugement_Faisant_Objet_De_Appel { get; set; }

        // الصادر بتاريخ
        public string? Emis_En_Date_Du { get; set; }

        // المجلس الجهوي للحسابات لجهة
        public string? CRC { get; set; }

        // المركز المحاسبي
        public string? Centre_Comptable { get; set; }

        // تاريخ تسجيل العريضة بالمجلس الجهوي للحسابات
        public string? Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes { get; set; }

        // تاريخ ملتمس النيابة العامة
        public string? Date_Requisition_Ministere_Public { get; set; }

        // رقم ملتمس النيابة العامة
        public string? Numero_Requisition_Ministere_Public { get; set; }

        // تاريخ أمر تعيين المستشار المقرر
        public string? Date_Ordonnance_Designation_Conseiller_Rapporteur { get; set; }

        // رقم أمر تعيين المستشار المقرر
        public string? Numero_Ordonnance_Designation_Conseiller_Rapporteur { get; set; }

        // المستشار المقرر
        public string? Conseiller_Rapporteur { get; set; }

        // تاریخ أمر تعيين المستشار المقرر الخلف
        public string? Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant { get; set; }

        // رقم أمر تعيين المستشار المقرر الخلف
        public string? Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant { get; set; }

        // المستشار المقرر الخلف
        public string? Conseiller_Rapporteur_Remplacant { get; set; }

        // تاريخ إرسال العريضة للأطراف
        public string? Date_Envoi_Requete_Parties { get; set; }

        // الأطراف - وكيل الملك لدى المجلس الجهوي للحسابات
        public string? Parties_Agent_du_Roi_au_CRC { get; set; }

        // الأطراف - الخازن الإقليمي
        public string? Parties_Entrepot_Regional { get; set; }

        // الأطراف - عامل الإقليم
        public string? Parties_Travailleur_du_territoire { get; set; }

        // الأطراف - رئيس الجماعة
        public string? Parties_President_de_la_Commune { get; set; }

        // تاريخ توصل الأطراف - وكيل الملك لدى المجلس الجهوي للحسابات
        public string? Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC { get; set; }

        // تاريخ توصل الأطراف - الخازن الإقليمي
        public string? Date_de_reception_par_les_parties_Entrepot_Regional { get; set; }

        // تاريخ توصل الأطراف - عامل الإقليم
        public string? Date_de_reception_par_les_parties_Travailleur_du_territoire { get; set; }

        // تاريخ توصل الأطراف - رئيس الجماعة
        public string? Date_de_reception_par_les_parties_President_de_la_Commune { get; set; }

        // رد على مذكرة الاستئناف - وكيل الملك لدى المجلس الجهوي للحسابات
        public string? Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC { get; set; }

        // رد على مذكرة الاستئناف - الخازن الإقليمي
        public string? Reponse_au_memoire_d_appel_Entrepot_Regional { get; set; }

        // رد على مذكرة الاستئناف - عامل الإقليم
        public string? Reponse_au_memoire_d_appel_Travailleur_du_territoire { get; set; }

        // رد على مذكرة الاستئناف - رئيس الجماعة
        public string? Reponse_au_memoire_d_appel_President_de_la_Commune { get; set; }

        // تاریخ طلب وثائق تكميلية
        public string? Date_Demande_Documents_Supplementaires { get; set; }

        // تاريخ استدعاء المتابع لحضور جلسة الاستماع
        public string? Date_Convocation_Interesse_Audience { get; set; }

        // تاريخ إجراء بحث ميداني
        public string? Date_Enquete_Sur_Le_Terrain { get; set; }

        // تاريخ اعداد التقرير
        public string? Date_Preparation_Rapport { get; set; }

        // تاريخ إحالة الملف على النيابة العامة
        public string? Date_Transmission_Dossier_Ministere_Public { get; set; }

        // تاریخ مستنتجات النيابة العامة
        public string? Date_Conclusions_Ministere_Public { get; set; }

        // رقم مستنتجات النيابة العامة
        public string? Numero_Conclusions_Ministere_Public { get; set; }

        // تاريخ توصل المتابع بالاستدعاء لأجل الإطلاع
        public string? Date_Reception_Convocation_Interesse_Consultation { get; set; }

        // تاريخ توصل المحامي بالاستدعاء لأجل الإطلاع
        public string? Date_Reception_Convocation_Avocat_Consultation { get; set; }

        // تاريخ إطلاع المتابع
        public string? Date_Consultation_Interesse { get; set; }

        // تاريخ إطلاع المحامي
        public string? Date_Consultation_Avocat { get; set; }

        // تاريخ رجوع الملف من كتابة الضبط المركزي
        public string? Date_Retour_Dossier_Greffe_Central { get; set; }

        // استدعاء المتابع لحضور جلسة الحكم
        public string? Convocation_Interesse_Audience_Jugement { get; set; }

        // استدعاء المحامي لحضور جلسة الحكم
        public string? Convocation_Avocat_Audience_Jugement { get; set; }

        // تاريخ جلسة الحكم
        public string? Date_Audience_Jugement { get; set; }

        // استدعاء المحامي لحضور جلسة النطق بالحكم
        public string? Convocation_Avocat_Prononce_Jugement { get; set; }

        // استدعاء المتابع لحضور جلسة النطق بالحكم
        public string? Convocation_Interesse_Prononce_Jugement { get; set; }

        // تاریخ جلسة النطق بالحكم
        public string? Date_Audience_Prononce_Jugement { get; set; }

        // منطوق القرار
        public string? Dispositif_Decision { get; set; }

        // القرار عدد
        public string? Numero_Decision { get; set; }

        // تاريخ إرسال القرار قصد التبليغ للأطراف
        public string? Date_Envoi_Decision_Notification_Parties { get; set; }

        // تاريخ توصل المحاسب بنسخة من القرار
        public string? Date_Reception_Comptable_Copie_Decision { get; set; }
        public string? UpdatedBy { get; set; }
        public string? UpdateTime { get; set; }
        public int RowNumber { get; set; }
        public string? RowError { get; set; }
    }
}