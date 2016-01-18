class CreateProducts < ActiveRecord::Migration
  #def change
  def self.up 
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :price
      t.timestamps
    end
    
    execute %q{
       CREATE FUNCTION trg_update_prod_price()
		  RETURNS trigger AS
		$BODY$
		BEGIN
		IF NEW.price < 0 THEN
            NEW.price:=0;
            return NEW;
        END IF;

		RETURN NEW;

		END;
		$BODY$
  	LANGUAGE plpgsql VOLATILE; }

    execute %q{ CREATE TRIGGER update_prod_price
	  BEFORE INSERT
	  ON products
	  FOR EACH ROW
	  EXECUTE PROCEDURE trg_update_prod_price();}

  


  end

end
