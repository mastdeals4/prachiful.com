
GRANT INSERT ON public.vp_contact_leads TO anon, authenticated;
GRANT SELECT, UPDATE, DELETE ON public.vp_contact_leads TO authenticated;
GRANT ALL ON public.vp_contact_leads TO service_role;

ALTER TABLE public.vp_contact_leads ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone can submit a contact lead" ON public.vp_contact_leads;
CREATE POLICY "Anyone can submit a contact lead"
  ON public.vp_contact_leads
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);
